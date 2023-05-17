package com.google.android.exoplayer2.extractor.avi;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.ImmutableList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class StreamFormatChunk implements AviChunk {
    private static final String TAG = "StreamFormatChunk";
    public final Format format;

    private static String getMimeTypeFromCompression(int i) {
        switch (i) {
            case 808802372:
            case 877677894:
            case 1145656883:
            case 1145656920:
            case 1482049860:
            case 1684633208:
            case 2021026148:
                return MimeTypes.VIDEO_MP4V;
            case 826496577:
            case 828601953:
            case 875967048:
                return "video/avc";
            case 842289229:
                return MimeTypes.VIDEO_MP42;
            case 859066445:
                return MimeTypes.VIDEO_MP43;
            case 1196444237:
            case 1735420525:
                return MimeTypes.VIDEO_MJPEG;
            default:
                return null;
        }
    }

    private static String getMimeTypeFromTag(int i) {
        if (i != 1) {
            if (i != 85) {
                if (i != 255) {
                    if (i != 8192) {
                        if (i != 8193) {
                            return null;
                        }
                        return MimeTypes.AUDIO_DTS;
                    }
                    return MimeTypes.AUDIO_AC3;
                }
                return "audio/mp4a-latm";
            }
            return MimeTypes.AUDIO_MPEG;
        }
        return MimeTypes.AUDIO_RAW;
    }

    @Override // com.google.android.exoplayer2.extractor.avi.AviChunk
    public int getType() {
        return AviExtractor.FOURCC_strf;
    }

    public static AviChunk parseFrom(int i, ParsableByteArray parsableByteArray) {
        if (i == 2) {
            return parseBitmapInfoHeader(parsableByteArray);
        }
        if (i == 1) {
            return parseWaveFormatEx(parsableByteArray);
        }
        Log.m796w(TAG, "Ignoring strf box for unsupported track type: " + Util.getTrackTypeString(i));
        return null;
    }

    public StreamFormatChunk(Format format) {
        this.format = format;
    }

    private static AviChunk parseBitmapInfoHeader(ParsableByteArray parsableByteArray) {
        parsableByteArray.skipBytes(4);
        int readLittleEndianInt = parsableByteArray.readLittleEndianInt();
        int readLittleEndianInt2 = parsableByteArray.readLittleEndianInt();
        parsableByteArray.skipBytes(4);
        int readLittleEndianInt3 = parsableByteArray.readLittleEndianInt();
        String mimeTypeFromCompression = getMimeTypeFromCompression(readLittleEndianInt3);
        if (mimeTypeFromCompression == null) {
            Log.m796w(TAG, "Ignoring track with unsupported compression " + readLittleEndianInt3);
            return null;
        }
        Format.Builder builder = new Format.Builder();
        builder.setWidth(readLittleEndianInt).setHeight(readLittleEndianInt2).setSampleMimeType(mimeTypeFromCompression);
        return new StreamFormatChunk(builder.build());
    }

    private static AviChunk parseWaveFormatEx(ParsableByteArray parsableByteArray) {
        int readLittleEndianUnsignedShort = parsableByteArray.readLittleEndianUnsignedShort();
        String mimeTypeFromTag = getMimeTypeFromTag(readLittleEndianUnsignedShort);
        if (mimeTypeFromTag == null) {
            Log.m796w(TAG, "Ignoring track with unsupported format tag " + readLittleEndianUnsignedShort);
            return null;
        }
        int readLittleEndianUnsignedShort2 = parsableByteArray.readLittleEndianUnsignedShort();
        int readLittleEndianInt = parsableByteArray.readLittleEndianInt();
        parsableByteArray.skipBytes(6);
        int pcmEncoding = Util.getPcmEncoding(parsableByteArray.readUnsignedShort());
        int readLittleEndianUnsignedShort3 = parsableByteArray.readLittleEndianUnsignedShort();
        byte[] bArr = new byte[readLittleEndianUnsignedShort3];
        parsableByteArray.readBytes(bArr, 0, readLittleEndianUnsignedShort3);
        Format.Builder builder = new Format.Builder();
        builder.setSampleMimeType(mimeTypeFromTag).setChannelCount(readLittleEndianUnsignedShort2).setSampleRate(readLittleEndianInt);
        if (MimeTypes.AUDIO_RAW.equals(mimeTypeFromTag) && pcmEncoding != 0) {
            builder.setPcmEncoding(pcmEncoding);
        }
        if ("audio/mp4a-latm".equals(mimeTypeFromTag) && readLittleEndianUnsignedShort3 > 0) {
            builder.setInitializationData(ImmutableList.m743of(bArr));
        }
        return new StreamFormatChunk(builder.build());
    }
}
