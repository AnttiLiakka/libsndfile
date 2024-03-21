project "libsndfile"
    kind "StaticLib"
    language "C"
    staticruntime "on"
    warnings "off"

    targetdir ("%{wks.location}/Bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/Bin-Int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "include/sndfile.h",
        "include/sndfile.hh",
        "include/config.h",

        "src/ALAC/aglib.h",
        "src/ALAC/alac_codec.h",
        "src/ALAC/ALACAudioTypes.h",
        "src/ALAC/ALACBitUtilities.h",
        "src/ALAC/dplib.h",
        "src/ALAC/EndianPortable.h",
        "src/ALAC/matrixlib.h",
        "src/ALAC/shift.h",


        "src/G72x/g72x.h",
        "src/G72x/g72x_priv.h",

        "src/GSM610/config.h",
        "src/GSM610/gsm.h",
        "src/GSM610/gsm610_priv.h",

        "src/chanmap.h",
        "src/common.h",
        "src/id3.h",
        "src/ima_oki_adpcm.h",
        "src/ogg.h",
        "src/ogg_vcomment.h",
        "src/sf_unistd.h",
        "src/sfconfig.h",
        "src/sfendian.h",
        "src/wavlike.h",

        "src/ALAC/ag_dec.c",
        "src/ALAC/ag_enc.c",
        "src/ALAC/alac_decoder.c",
        "src/ALAC/alac_encoder.c",
        "src/ALAC/ALACBitUtilities.c",
        "src/ALAC/dp_dec.c",
        "src/ALAC/dp_enc.c",
        "src/ALAC/matrix_dec.c",
        "src/ALAC/matrix_enc.c",

        "src/G72x/g72x.c",
        "src/G72x/g721.c",
        "src/G72x/g723_16.c",
        "src/G72x/g723_24.c",
        "src/G72x/g723_40.c" ,

        "src/GSM610/add.c",
        "src/GSM610/code.c",
        "src/GSM610/decode.c",
        "src/GSM610/gsm_create.c",
        "src/GSM610/gsm_decode.c",
        "src/GSM610/gsm_destroy.c",
        "src/GSM610/gsm_encode.c",
        "src/GSM610/gsm_option.c",
        "src/GSM610/long_term.c",
        "src/GSM610/lpc.c",
        "src/GSM610/preprocess.c",
        "src/GSM610/rpe.c",
        "src/GSM610/short_term.c",
        "src/GSM610/table.c",

        "src/gsm610.c",
        "src/aiff.c",
        "src/alac.c",
        "src/alaw.c",
        "src/au.c",
        "src/audio_detect.c",
        "src/avr.c",
        "src/broadcast.c",
        "src/caf.c",
        "src/cart.c",
        "src/chanmap.c",
        "src/chunk.c",
        "src/command.c",
        "src/common.c",
        "src/dither.c",
        "src/double64.c",
        "src/dwd.c",
        "src/dwvw.c",
        "src/file_io.c",
        "src/flac.c",
        "src/float32.c",
        "src/g72x.c",
        "src/htk.c",
        "src/id3.c",
        "src/ima_adpcm.c",
        "src/ima_oki_adpcm.c",
        "src/interleave.c",
        "src/ircam.c",
        "src/macos.c",
        "src/mat4.c",
        "src/mat5.c",
        "src/mpc2k.c",
        "src/mpeg.c",
        "src/mpeg_decode.c",
        "src/mpeg_l3_encode.c",
        "src/ms_adpcm.c",
        "src/nist.c",
        "src/nms_adpcm.c",
        "src/ogg.c",
        "src/ogg_opus.c",
        "src/ogg_pcm.c",
        "src/ogg_speex.c",
        "src/ogg_vcomment.c",
        "src/ogg_vorbis.c",
        "src/paf.c",
        "src/pcm.c",
        "src/pvf.c",
        "src/raw.c",
        "src/rf64.c",
        "src/rx2.c",
        "src/sd2.c",
        "src/sds.c",
        "src/sndfile.c",
        "src/strings.c",
        "src/svx.c",
        "src/txw.c",
        "src/ulaw.c",
        "src/voc.c",
        "src/vox_adpcm.c",
        "src/w64.c",
        "src/wav.c",
        "src/wavlike.c",
        "src/windows.c",
        "src/wve.c",
        "src/xi.c",
    }

    includedirs
    {
        "include/",
        "src/"
    }

    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

    filter "configurations:Release"
		runtime "Release"
		optimize "on"