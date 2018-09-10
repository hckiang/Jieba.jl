module Jieba

using Pkg

if ! haskey(Pkg.installed(), "JiebaData")
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
