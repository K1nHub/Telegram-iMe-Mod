package com.google.android.exoplayer2.ext.ffmpeg;

import com.google.android.exoplayer2.ExoPlayerLibraryInfo;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import org.telegram.messenger.NativeLoader;
/* loaded from: classes.dex */
public final class FfmpegLibrary {
    private static final String TAG = "FfmpegLibrary";
    private static int inputBufferPaddingSize;
    private static String version;

    private static native int ffmpegGetInputBufferPaddingSize();

    private static native String ffmpegGetVersion();

    private static native boolean ffmpegHasDecoder(String str);

    public static void setLibraries(String... strArr) {
    }

    static {
        ExoPlayerLibraryInfo.registerModule("goog.exo.ffmpeg");
        inputBufferPaddingSize = -1;
    }

    private FfmpegLibrary() {
    }

    public static boolean isAvailable() {
        return NativeLoader.loaded();
    }

    public static String getVersion() {
        if (isAvailable()) {
            if (version == null) {
                version = ffmpegGetVersion();
            }
            return version;
        }
        return null;
    }

    public static int getInputBufferPaddingSize() {
        if (isAvailable()) {
            if (inputBufferPaddingSize == -1) {
                inputBufferPaddingSize = ffmpegGetInputBufferPaddingSize();
            }
            return inputBufferPaddingSize;
        }
        return -1;
    }

    public static boolean supportsFormat(String str) {
        String codecName;
        if (isAvailable() && (codecName = getCodecName(str)) != null) {
            if (ffmpegHasDecoder(codecName)) {
                return true;
            }
            Log.m814w(TAG, "No " + codecName + " decoder available. Check the FFmpeg build configuration.");
            return false;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getCodecName(String str) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -2123537834:
                if (str.equals(MimeTypes.AUDIO_E_AC3_JOC)) {
                    c = 0;
                    break;
                }
                break;
            case -1606874997:
                if (str.equals(MimeTypes.AUDIO_AMR_WB)) {
                    c = 1;
                    break;
                }
                break;
            case -1095064472:
                if (str.equals(MimeTypes.AUDIO_DTS)) {
                    c = 2;
                    break;
                }
                break;
            case -1003765268:
                if (str.equals(MimeTypes.AUDIO_VORBIS)) {
                    c = 3;
                    break;
                }
                break;
            case -432837260:
                if (str.equals(MimeTypes.AUDIO_MPEG_L1)) {
                    c = 4;
                    break;
                }
                break;
            case -432837259:
                if (str.equals(MimeTypes.AUDIO_MPEG_L2)) {
                    c = 5;
                    break;
                }
                break;
            case -53558318:
                if (str.equals("audio/mp4a-latm")) {
                    c = 6;
                    break;
                }
                break;
            case 187078296:
                if (str.equals(MimeTypes.AUDIO_AC3)) {
                    c = 7;
                    break;
                }
                break;
            case 1503095341:
                if (str.equals(MimeTypes.AUDIO_AMR_NB)) {
                    c = '\b';
                    break;
                }
                break;
            case 1504470054:
                if (str.equals(MimeTypes.AUDIO_ALAC)) {
                    c = '\t';
                    break;
                }
                break;
            case 1504578661:
                if (str.equals(MimeTypes.AUDIO_E_AC3)) {
                    c = '\n';
                    break;
                }
                break;
            case 1504619009:
                if (str.equals(MimeTypes.AUDIO_FLAC)) {
                    c = 11;
                    break;
                }
                break;
            case 1504831518:
                if (str.equals(MimeTypes.AUDIO_MPEG)) {
                    c = '\f';
                    break;
                }
                break;
            case 1504891608:
                if (str.equals(MimeTypes.AUDIO_OPUS)) {
                    c = '\r';
                    break;
                }
                break;
            case 1505942594:
                if (str.equals(MimeTypes.AUDIO_DTS_HD)) {
                    c = 14;
                    break;
                }
                break;
            case 1556697186:
                if (str.equals(MimeTypes.AUDIO_TRUEHD)) {
                    c = 15;
                    break;
                }
                break;
            case 1903231877:
                if (str.equals(MimeTypes.AUDIO_ALAW)) {
                    c = 16;
                    break;
                }
                break;
            case 1903589369:
                if (str.equals(MimeTypes.AUDIO_MLAW)) {
                    c = 17;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case '\n':
                return "eac3";
            case 1:
                return "amrwb";
            case 2:
            case 14:
                return "dca";
            case 3:
                return "vorbis";
            case 4:
            case 5:
            case '\f':
                return "mp3";
            case 6:
                return "aac";
            case 7:
                return "ac3";
            case '\b':
                return "amrnb";
            case '\t':
                return "alac";
            case 11:
                return "flac";
            case '\r':
                return "opus";
            case 15:
                return "truehd";
            case 16:
                return "pcm_alaw";
            case 17:
                return "pcm_mulaw";
            default:
                return null;
        }
    }
}
