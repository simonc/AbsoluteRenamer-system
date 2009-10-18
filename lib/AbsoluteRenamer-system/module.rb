module AbsoluteRenamer
    class SystemModule < AbsoluteRenamer::IModule
        def initialize
            @filters = [
                pattern('env:(\w+)'),
            ]

            @slash_replacement = conf[:options][:system_slash_replacement] || '-'
        end

        def interpret(file, infos, type)
            if infos[0].match(/env:(\w+)/)
                self.env(infos)
            end
        end

        def env(infos)
            varname = infos[3]

            val = ENV[varname] || conf[:options][:default_string]
            val = val.gsub(/\//, @slash_replacement)

            modify val, infos[2]
        end
    end
end
