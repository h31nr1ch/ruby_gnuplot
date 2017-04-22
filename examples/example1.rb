def  AwesomePlot(bestFit,averageFit)
    Gnuplot.open do |gp|
        Gnuplot::Plot.new( gp ) do |plot|
            #plot.xrange "[-10:10]"
            plot.title  "Average"
            plot.ylabel "Fitness"
            plot.xlabel "Geracoes"

          plot.data << Gnuplot::DataSet.new(averageFit) do |ds|
              ds.with = "lines"
              ds.linewidth = 4
              ds.title = "avarage"
          end

          plot.data << Gnuplot::DataSet.new(bestFit) do |ds|
              ds.with = "lines"
              ds.linewidth = 5
              ds.title = "best"
          end
        end
    end
end
