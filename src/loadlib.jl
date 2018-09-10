import Libdl
export DICTPATH 
export HMMPATH
export USERPATH
export libdemo 

fnames = ["libdemo.so", "libdemo.dylib", "libdemo.dll"]
path = joinpath(dirname(Base.find_package("Jieba")), "..", "deps")
global libname = ""
found = false
if !found
    for fname in fnames
        if isfile(libname)
            found = true
            break
        end
    end
end

if ! found
    error("Library cannot be found; it may not have been built correctly.\n Try include(\"build.jl\") from within the deps directory.")
end

const libdemo = libname

libkey = Libdl.dlopen(libdemo)

const mix_engine_key    =  Libdl.dlsym(libkey,:mix_engine)
const vector_result_key =  Libdl.dlsym(libkey,:vector_result)
const get_vector_size_key =  Libdl.dlsym(libkey,:get_vector_size)
const result_key =  Libdl.dlsym(libkey,:result)
const free_basev_key =  Libdl.dlsym(libkey,:free_basev)
const free_char_key =  Libdl.dlsym(libkey,:free_char)
const free_mix_key =  Libdl.dlsym(libkey,:free_mix)

const detect_enc_key =  Libdl.dlsym(libkey,:detect_enc)

#MP
const mp_engine_key    =  Libdl.dlsym(libkey,:mp_engine)
const mp_vector_result_key =  Libdl.dlsym(libkey,:mp_vector_result)
const free_mp_key =  Libdl.dlsym(libkey,:free_mp)

#HMM
const hmm_engine_key    =  Libdl.dlsym(libkey,:hmm_engine)
const hmm_vector_result_key =  Libdl.dlsym(libkey,:hmm_vector_result)
const free_hmm_key =  Libdl.dlsym(libkey,:free_hmm)

#QU
const qu_engine_key    =  Libdl.dlsym(libkey,:qu_engine)
const qu_vector_result_key =  Libdl.dlsym(libkey,:qu_vector_result)
const free_qu_key =  Libdl.dlsym(libkey,:free_qu)

#Key

const key_engine_key    =  Libdl.dlsym(libkey,:key_engine)
const key_vector_num_result_key =  Libdl.dlsym(libkey,:key_vector_num_result)
const free_key_key =  Libdl.dlsym(libkey,:free_key)
const keyword_char_key =  Libdl.dlsym(libkey,:keyword_char)
const keyword_num_key =  Libdl.dlsym(libkey,:keyword_num) 

const get_vector_num_size_key =  Libdl.dlsym(libkey,:get_vector_num_size)
const free_vector_num_base_key =  Libdl.dlsym(libkey,:free_vector_num_base) 

const free_num_p_key =  Libdl.dlsym(libkey,:free_num_p)

#Tag

const tag_engine_key    =  Libdl.dlsym(libkey,:tag_engine)
const tag_vector_vector_result_key =  Libdl.dlsym(libkey,:tag_vector_vector_result)
const free_tag_key =  Libdl.dlsym(libkey,:free_tag)
const tagger_char_key =  Libdl.dlsym(libkey,:tagger_char)
const tagger_tag_key =  Libdl.dlsym(libkey,:tagger_tag) 
const get_vector_vector_size_key =  Libdl.dlsym(libkey,:get_vector_vector_size)
const free_vector_vector_base_key =  Libdl.dlsym(libkey,:free_vector_vector_base)

#Sim

const sim_engine_key    =  Libdl.dlsym(libkey,:sim_engine)
const sim_vector_num_result_key =  Libdl.dlsym(libkey,:sim_vector_num_result)
const free_sim_key =  Libdl.dlsym(libkey,:free_sim) 

const simhasher_res_key =  Libdl.dlsym(libkey,:simhasher_res)
const distance_key =  Libdl.dlsym(libkey,:distance)

joinpath(dirname(Base.find_package("Jieba")), ".."

DICTPATH = joinpath(dirname(Base.find_package("JiebaData")), "..","deps", "dict", "jieba.dict.utf8")
HMMPATH  = joinpath(dirname(Base.find_package("JiebaData")), "..","deps", "dict", "hmm_model.utf8")
USERPATH = joinpath(dirname(Base.find_package("JiebaData")), "..","deps", "dict", "user.dict.utf8")
STOPPATH  = joinpath(dirname(Base.find_package("JiebaData")), "..","deps", "dict", "stop_words.utf8")
IDFPATH = joinpath(dirname(Base.find_package("JiebaData")), "..","deps", "dict", "idf.utf8")

if !isfile(DICTPATH)
    error("Can not find system dictionary.")
end

if !isfile(HMMPATH)
    error("Can not find HMM model.")
end

if !isfile(USERPATH)
    error("Can not find user dictionary.")
end

if !isfile(STOPPATH)
    error("Can not find stop words dictionary.")
end

if !isfile(IDFPATH)
    error("Can not find IDFPATH.")
end
