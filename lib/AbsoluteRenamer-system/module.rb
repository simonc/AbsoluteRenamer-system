module AbsoluteRenamer
    class SystemModule < AbsoluteRenamer::IModule
        def initialize
            @filters = [
                pattern('env:(\w+)'),
                pattern('sys:(uname( -[imnoprsv]+)?|hostname( -s)?|whoami|id -[gnru]+)')
            ]

            @slash_replacement = conf[:options][:system_slash_replacement] || '-'
        end

        def interpret(file, infos, type)
            if infos[0].match(/env:/)
                self.env(infos)
            elsif infos[0].match(/sys:/)
                self.sys(infos)
            end
        end

        def env(infos)
            varname = infos[3]

            val = ENV[varname] || conf[:options][:default_string]
            val = val.gsub(/\//, @slash_replacement)

            modify val, infos[2]
        end

        def sys(infos)
            modifier = infos.delete_at(5)
            infos.compact!

            val = `#{infos[2]}`

            modify val.chomp!, modifier
        end
    end
end
