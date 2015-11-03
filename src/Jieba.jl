module Jieba

try
	Pkg.installed("JiebaData")
catch
	error("""Please add JiebaData Package: Pkg.clone("git://github.com/qinwf/JiebaData.jl.git")""")
end

include("loadlib.jl")
include("worker.jl")
include("detect.jl")
include("segment.jl")
include("tagger.jl")
include("keywords.jl")
include("simhash.jl")
end # module
