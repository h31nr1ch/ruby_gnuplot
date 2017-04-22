def  AwesomePlot2(divers)
    Gnuplot.open do |gp|
        Gnuplot::Plot.new( gp ) do |plot|
            #plot.xrange "[-10:10]"
            plot.title  "Average"
            plot.ylabel "Diversidade"
            plot.xlabel "Geracoes"

          plot.data << Gnuplot::DataSet.new(divers) do |ds|
              ds.with = "lines"
              ds.linewidth = 3
              ds.title = "Diversidade"
          end
        end
    end
end
