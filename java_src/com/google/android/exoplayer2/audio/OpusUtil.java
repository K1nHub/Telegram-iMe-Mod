package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.C0483C;
import com.google.android.exoplayer2.DefaultLoadControl;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class OpusUtil {
    private static final int DEFAULT_SEEK_PRE_ROLL_SAMPLES = 3840;
    private static final int FULL_CODEC_INITIALIZATION_DATA_BUFFER_COUNT = 3;
    public static final int MAX_BYTES_PER_SECOND = 63750;
    public static final int SAMPLE_RATE = 48000;

    private static long getPacketDurationUs(byte b, byte b2) {
        int i;
        int i2 = b & 255;
        int i3 = i2 & 3;
        int i4 = 2;
        if (i3 == 0) {
            i4 = 1;
        } else if (i3 != 1 && i3 != 2) {
            i4 = b2 & 63;
        }
        int i5 = i2 >> 3;
        return i4 * (i5 >= 16 ? DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_MS << i : i5 >= 12 ? 10000 << (i & 1) : (i5 & 3) == 3 ? 60000 : 10000 << i);
    }

    private OpusUtil() {
    }

    public static int getChannelCount(byte[] bArr) {
        return bArr[9] & 255;
    }

    public static List<byte[]> buildInitializationData(byte[] bArr) {
        long sampleCountToNanoseconds = sampleCountToNanoseconds(getPreSkipSamples(bArr));
        long sampleCountToNanoseconds2 = sampleCountToNanoseconds(3840L);
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(bArr);
        arrayList.add(buildNativeOrderByteArray(sampleCountToNanoseconds));
        arrayList.add(buildNativeOrderByteArray(sampleCountToNanoseconds2));
        return arrayList;
    }

    public static int parsePacketAudioSampleCount(ByteBuffer byteBuffer) {
        return (int) ((getPacketDurationUs(byteBuffer.get(0), byteBuffer.limit() > 1 ? byteBuffer.get(1) : (byte) 0) * 48000) / 1000000);
    }

    public static long getPacketDurationUs(byte[] bArr) {
        return getPacketDurationUs(bArr[0], bArr.length > 1 ? bArr[1] : (byte) 0);
    }

    private static int getPreSkipSamples(byte[] bArr) {
        return (bArr[10] & 255) | ((bArr[11] & 255) << 8);
    }

    private static byte[] buildNativeOrderByteArray(long j) {
        return ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(j).array();
    }

    private static long sampleCountToNanoseconds(long j) {
        return (j * C0483C.NANOS_PER_SECOND) / 48000;
    }
}
