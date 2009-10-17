module AbsoluteRenamer
    class SystemModule < AbsoluteRenamer::IModule
        def initialize
            @filters = [
                pattern('env:(\w+)'),
            ]
        end

        def interpret(file, infos, type)
            if infos[0].match /env:(\w+)/
                self.env(infos)
            end
        end

        def env(infos)
            modifier = infos[1]
            varname = infos[2]
            ENV['var_name'] || conf[:default_string]
        end
    end
end
