package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import android.util.Base64;
import android.util.Pair;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.AacUtil;
import com.google.android.exoplayer2.extractor.p015ts.PsExtractor;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.exoplayer2.source.rtsp.MediaDescription;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.CodecSpecificDataUtil;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.NalUnitUtil;
import com.google.android.exoplayer2.util.ParsableBitArray;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class RtspMediaTrack {
    private static final String AAC_CODECS_PREFIX = "mp4a.40.";
    private static final int DEFAULT_H263_HEIGHT = 288;
    private static final int DEFAULT_H263_WIDTH = 352;
    private static final int DEFAULT_MP4V_HEIGHT = 288;
    private static final int DEFAULT_MP4V_WIDTH = 352;
    private static final int DEFAULT_VP8_HEIGHT = 240;
    private static final int DEFAULT_VP8_WIDTH = 320;
    private static final int DEFAULT_VP9_HEIGHT = 240;
    private static final int DEFAULT_VP9_WIDTH = 320;
    private static final String GENERIC_CONTROL_ATTR = "*";
    private static final String H264_CODECS_PREFIX = "avc1.";
    private static final String MPEG4_CODECS_PREFIX = "mp4v.";
    private static final int OPUS_CLOCK_RATE = 48000;
    private static final String PARAMETER_AMR_INTERLEAVING = "interleaving";
    private static final String PARAMETER_AMR_OCTET_ALIGN = "octet-align";
    private static final String PARAMETER_H265_SPROP_MAX_DON_DIFF = "sprop-max-don-diff";
    private static final String PARAMETER_H265_SPROP_PPS = "sprop-pps";
    private static final String PARAMETER_H265_SPROP_SPS = "sprop-sps";
    private static final String PARAMETER_H265_SPROP_VPS = "sprop-vps";
    private static final String PARAMETER_MP4A_CONFIG = "config";
    private static final String PARAMETER_MP4A_C_PRESENT = "cpresent";
    private static final String PARAMETER_PROFILE_LEVEL_ID = "profile-level-id";
    private static final String PARAMETER_SPROP_PARAMS = "sprop-parameter-sets";
    public final RtpPayloadFormat payloadFormat;
    public final Uri uri;

    public RtspMediaTrack(MediaDescription mediaDescription, Uri uri) {
        Assertions.checkArgument(mediaDescription.attributes.containsKey(SessionDescription.ATTR_CONTROL));
        this.payloadFormat = generatePayloadFormat(mediaDescription);
        this.uri = extractTrackUri(uri, (String) Util.castNonNull(mediaDescription.attributes.get(SessionDescription.ATTR_CONTROL)));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || RtspMediaTrack.class != obj.getClass()) {
            return false;
        }
        RtspMediaTrack rtspMediaTrack = (RtspMediaTrack) obj;
        return this.payloadFormat.equals(rtspMediaTrack.payloadFormat) && this.uri.equals(rtspMediaTrack.uri);
    }

    public int hashCode() {
        return ((217 + this.payloadFormat.hashCode()) * 31) + this.uri.hashCode();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    static RtpPayloadFormat generatePayloadFormat(MediaDescription mediaDescription) {
        int i;
        char c;
        Format.Builder builder = new Format.Builder();
        int i2 = mediaDescription.bitrate;
        if (i2 > 0) {
            builder.setAverageBitrate(i2);
        }
        MediaDescription.RtpMapAttribute rtpMapAttribute = mediaDescription.rtpMapAttribute;
        int i3 = rtpMapAttribute.payloadType;
        String str = rtpMapAttribute.mediaEncoding;
        String mimeTypeFromRtpMediaType = RtpPayloadFormat.getMimeTypeFromRtpMediaType(str);
        builder.setSampleMimeType(mimeTypeFromRtpMediaType);
        int i4 = mediaDescription.rtpMapAttribute.clockRate;
        if ("audio".equals(mediaDescription.mediaType)) {
            i = inferChannelCount(mediaDescription.rtpMapAttribute.encodingParameters, mimeTypeFromRtpMediaType);
            builder.setSampleRate(i4).setChannelCount(i);
        } else {
            i = -1;
        }
        ImmutableMap<String, String> fmtpParametersAsMap = mediaDescription.getFmtpParametersAsMap();
        switch (mimeTypeFromRtpMediaType.hashCode()) {
            case -1664118616:
                if (mimeTypeFromRtpMediaType.equals(MimeTypes.VIDEO_H263)) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -1662541442:
                if (mimeTypeFromRtpMediaType.equals(MimeTypes.VIDEO_H265)) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case -1606874997:
                if (mimeTypeFromRtpMediaType.equals(MimeTypes.AUDIO_AMR_WB)) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -53558318:
                if (mimeTypeFromRtpMediaType.equals("audio/mp4a-latm")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 187078296:
                if (mimeTypeFromRtpMediaType.equals(MimeTypes.AUDIO_AC3)) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case 187094639:
                if (mimeTypeFromRtpMediaType.equals(MimeTypes.AUDIO_RAW)) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case 1187890754:
                if (mimeTypeFromRtpMediaType.equals(MimeTypes.VIDEO_MP4V)) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 1331836730:
                if (mimeTypeFromRtpMediaType.equals("video/avc")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 1503095341:
                if (mimeTypeFromRtpMediaType.equals(MimeTypes.AUDIO_AMR_NB)) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 1504891608:
                if (mimeTypeFromRtpMediaType.equals(MimeTypes.AUDIO_OPUS)) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1599127256:
                if (mimeTypeFromRtpMediaType.equals(MimeTypes.VIDEO_VP8)) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 1599127257:
                if (mimeTypeFromRtpMediaType.equals(MimeTypes.VIDEO_VP9)) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case 1903231877:
                if (mimeTypeFromRtpMediaType.equals(MimeTypes.AUDIO_ALAW)) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case 1903589369:
                if (mimeTypeFromRtpMediaType.equals(MimeTypes.AUDIO_MLAW)) {
                    c = '\r';
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                Assertions.checkArgument(i != -1);
                Assertions.checkArgument(!fmtpParametersAsMap.isEmpty());
                if (str.equals(RtpPayloadFormat.RTP_MEDIA_MPEG4_LATM_AUDIO)) {
                    Assertions.checkArgument(fmtpParametersAsMap.containsKey(PARAMETER_MP4A_C_PRESENT) && fmtpParametersAsMap.get(PARAMETER_MP4A_C_PRESENT).equals(SessionDescription.SUPPORTED_SDP_VERSION), "Only supports cpresent=0 in AAC audio.");
                    String str2 = fmtpParametersAsMap.get(PARAMETER_MP4A_CONFIG);
                    Assertions.checkNotNull(str2, "AAC audio stream must include config fmtp parameter");
                    Assertions.checkArgument(str2.length() % 2 == 0, "Malformat MPEG4 config: " + str2);
                    AacUtil.Config parseAacStreamMuxConfig = parseAacStreamMuxConfig(str2);
                    builder.setSampleRate(parseAacStreamMuxConfig.sampleRateHz).setChannelCount(parseAacStreamMuxConfig.channelCount).setCodecs(parseAacStreamMuxConfig.codecs);
                }
                processAacFmtpAttribute(builder, fmtpParametersAsMap, i, i4);
                break;
            case 1:
            case 2:
                Assertions.checkArgument(i == 1, "Multi channel AMR is not currently supported.");
                Assertions.checkArgument(!fmtpParametersAsMap.isEmpty(), "fmtp parameters must include octet-align.");
                Assertions.checkArgument(fmtpParametersAsMap.containsKey(PARAMETER_AMR_OCTET_ALIGN), "Only octet aligned mode is currently supported.");
                Assertions.checkArgument(!fmtpParametersAsMap.containsKey(PARAMETER_AMR_INTERLEAVING), "Interleaving mode is not currently supported.");
                break;
            case 3:
                Assertions.checkArgument(i != -1);
                Assertions.checkArgument(i4 == 48000, "Invalid OPUS clock rate.");
                break;
            case 4:
                Assertions.checkArgument(!fmtpParametersAsMap.isEmpty());
                processMPEG4FmtpAttribute(builder, fmtpParametersAsMap);
                break;
            case 5:
                builder.setWidth(352).setHeight(288);
                break;
            case 6:
                Assertions.checkArgument(!fmtpParametersAsMap.isEmpty());
                processH264FmtpAttribute(builder, fmtpParametersAsMap);
                break;
            case 7:
                Assertions.checkArgument(!fmtpParametersAsMap.isEmpty());
                processH265FmtpAttribute(builder, fmtpParametersAsMap);
                break;
            case '\b':
                builder.setWidth(320).setHeight(PsExtractor.VIDEO_STREAM_MASK);
                break;
            case '\t':
                builder.setWidth(320).setHeight(PsExtractor.VIDEO_STREAM_MASK);
                break;
            case '\n':
                builder.setPcmEncoding(RtpPayloadFormat.getRawPcmEncodingType(str));
                break;
        }
        Assertions.checkArgument(i4 > 0);
        return new RtpPayloadFormat(builder.build(), i3, i4, fmtpParametersAsMap, str);
    }

    private static int inferChannelCount(int i, String str) {
        return i != -1 ? i : str.equals(MimeTypes.AUDIO_AC3) ? 6 : 1;
    }

    private static void processAacFmtpAttribute(Format.Builder builder, ImmutableMap<String, String> immutableMap, int i, int i2) {
        Assertions.checkArgument(immutableMap.containsKey("profile-level-id"));
        builder.setCodecs(AAC_CODECS_PREFIX + ((String) Assertions.checkNotNull(immutableMap.get("profile-level-id"))));
        builder.setInitializationData(ImmutableList.m1056of(AacUtil.buildAacLcAudioSpecificConfig(i2, i)));
    }

    private static AacUtil.Config parseAacStreamMuxConfig(String str) {
        ParsableBitArray parsableBitArray = new ParsableBitArray(Util.getBytesFromHexString(str));
        Assertions.checkArgument(parsableBitArray.readBits(1) == 0, "Only supports audio mux version 0.");
        Assertions.checkArgument(parsableBitArray.readBits(1) == 1, "Only supports allStreamsSameTimeFraming.");
        parsableBitArray.skipBits(6);
        Assertions.checkArgument(parsableBitArray.readBits(4) == 0, "Only supports one program.");
        Assertions.checkArgument(parsableBitArray.readBits(3) == 0, "Only supports one numLayer.");
        try {
            return AacUtil.parseAudioSpecificConfig(parsableBitArray, false);
        } catch (ParserException e) {
            throw new IllegalArgumentException(e);
        }
    }

    private static void processMPEG4FmtpAttribute(Format.Builder builder, ImmutableMap<String, String> immutableMap) {
        String str = immutableMap.get(PARAMETER_MP4A_CONFIG);
        if (str != null) {
            byte[] bytesFromHexString = Util.getBytesFromHexString(str);
            builder.setInitializationData(ImmutableList.m1056of(bytesFromHexString));
            Pair<Integer, Integer> videoResolutionFromMpeg4VideoConfig = CodecSpecificDataUtil.getVideoResolutionFromMpeg4VideoConfig(bytesFromHexString);
            builder.setWidth(((Integer) videoResolutionFromMpeg4VideoConfig.first).intValue()).setHeight(((Integer) videoResolutionFromMpeg4VideoConfig.second).intValue());
        } else {
            builder.setWidth(352).setHeight(288);
        }
        String str2 = immutableMap.get("profile-level-id");
        StringBuilder sb = new StringBuilder();
        sb.append(MPEG4_CODECS_PREFIX);
        if (str2 == null) {
            str2 = IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE;
        }
        sb.append(str2);
        builder.setCodecs(sb.toString());
    }

    private static byte[] getInitializationDataFromParameterSet(String str) {
        byte[] decode = Base64.decode(str, 0);
        int length = decode.length;
        byte[] bArr = NalUnitUtil.NAL_START_CODE;
        byte[] bArr2 = new byte[length + bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        System.arraycopy(decode, 0, bArr2, bArr.length, decode.length);
        return bArr2;
    }

    private static void processH264FmtpAttribute(Format.Builder builder, ImmutableMap<String, String> immutableMap) {
        Assertions.checkArgument(immutableMap.containsKey(PARAMETER_SPROP_PARAMS));
        String[] split = Util.split((String) Assertions.checkNotNull(immutableMap.get(PARAMETER_SPROP_PARAMS)), ",");
        Assertions.checkArgument(split.length == 2);
        ImmutableList m1055of = ImmutableList.m1055of(getInitializationDataFromParameterSet(split[0]), getInitializationDataFromParameterSet(split[1]));
        builder.setInitializationData(m1055of);
        byte[] bArr = m1055of.get(0);
        NalUnitUtil.SpsData parseSpsNalUnit = NalUnitUtil.parseSpsNalUnit(bArr, NalUnitUtil.NAL_START_CODE.length, bArr.length);
        builder.setPixelWidthHeightRatio(parseSpsNalUnit.pixelWidthHeightRatio);
        builder.setHeight(parseSpsNalUnit.height);
        builder.setWidth(parseSpsNalUnit.width);
        String str = immutableMap.get("profile-level-id");
        if (str != null) {
            builder.setCodecs(H264_CODECS_PREFIX + str);
            return;
        }
        builder.setCodecs(CodecSpecificDataUtil.buildAvcCodecString(parseSpsNalUnit.profileIdc, parseSpsNalUnit.constraintsFlagsAndReservedZero2Bits, parseSpsNalUnit.levelIdc));
    }

    private static void processH265FmtpAttribute(Format.Builder builder, ImmutableMap<String, String> immutableMap) {
        if (immutableMap.containsKey(PARAMETER_H265_SPROP_MAX_DON_DIFF)) {
            int parseInt = Integer.parseInt((String) Assertions.checkNotNull(immutableMap.get(PARAMETER_H265_SPROP_MAX_DON_DIFF)));
            boolean z = parseInt == 0;
            Assertions.checkArgument(z, "non-zero sprop-max-don-diff " + parseInt + " is not supported");
        }
        Assertions.checkArgument(immutableMap.containsKey(PARAMETER_H265_SPROP_VPS));
        Assertions.checkArgument(immutableMap.containsKey(PARAMETER_H265_SPROP_SPS));
        Assertions.checkArgument(immutableMap.containsKey(PARAMETER_H265_SPROP_PPS));
        ImmutableList m1054of = ImmutableList.m1054of(getInitializationDataFromParameterSet((String) Assertions.checkNotNull(immutableMap.get(PARAMETER_H265_SPROP_VPS))), getInitializationDataFromParameterSet((String) Assertions.checkNotNull(immutableMap.get(PARAMETER_H265_SPROP_SPS))), getInitializationDataFromParameterSet((String) Assertions.checkNotNull(immutableMap.get(PARAMETER_H265_SPROP_PPS))));
        builder.setInitializationData(m1054of);
        byte[] bArr = m1054of.get(1);
        NalUnitUtil.H265SpsData parseH265SpsNalUnit = NalUnitUtil.parseH265SpsNalUnit(bArr, NalUnitUtil.NAL_START_CODE.length, bArr.length);
        builder.setPixelWidthHeightRatio(parseH265SpsNalUnit.pixelWidthHeightRatio);
        builder.setHeight(parseH265SpsNalUnit.height).setWidth(parseH265SpsNalUnit.width);
        builder.setCodecs(CodecSpecificDataUtil.buildHevcCodecString(parseH265SpsNalUnit.generalProfileSpace, parseH265SpsNalUnit.generalTierFlag, parseH265SpsNalUnit.generalProfileIdc, parseH265SpsNalUnit.generalProfileCompatibilityFlags, parseH265SpsNalUnit.constraintBytes, parseH265SpsNalUnit.generalLevelIdc));
    }

    private static Uri extractTrackUri(Uri uri, String str) {
        Uri parse = Uri.parse(str);
        return parse.isAbsolute() ? parse : str.equals(GENERIC_CONTROL_ATTR) ? uri : uri.buildUpon().appendEncodedPath(str).build();
    }
}
