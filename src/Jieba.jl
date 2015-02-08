module Jieba

try
	Pkg.installed("JiebaData")
catch
	error("""Please add JiebaData Package: Pkg.clone("git://github.com/qinwf/JiebaData.jl.git")""")
end

include("loadlib.jl")

include("worker.jl")
include("worker-cn.jl")

include("detect.jl")

include("segment.jl")
include("segment-cn.jl")

include("tagger.jl")
include("tagger-cn.jl")

include("keywords.jl")
include("keywords-cn.jl")

include("simhash.jl")
include("simhash-cn.jl")

end # module
