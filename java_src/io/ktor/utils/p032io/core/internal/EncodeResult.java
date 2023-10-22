package io.ktor.utils.p032io.core.internal;

import com.google.android.exoplayer2.source.rtsp.RtpPacket;
import kotlin.UShort;
/* compiled from: EncodeResult.kt */
/* renamed from: io.ktor.utils.io.core.internal.EncodeResult */
/* loaded from: classes4.dex */
public final class EncodeResult {
    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m1918constructorimpl(int i) {
        return i;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m1919constructorimpl(short s, short s2) {
        return m1918constructorimpl(((s & 65535) << 16) | (s2 & 65535));
    }

    /* renamed from: getCharacters-Mh2AYeg  reason: not valid java name */
    public static final short m1921getCharactersMh2AYeg(int i) {
        return UShort.m2011constructorimpl((short) (i >>> 16));
    }

    /* renamed from: getBytes-Mh2AYeg  reason: not valid java name */
    public static final short m1920getBytesMh2AYeg(int i) {
        return UShort.m2011constructorimpl((short) (i & RtpPacket.MAX_SEQUENCE_NUMBER));
    }

    /* renamed from: component1-Mh2AYeg  reason: not valid java name */
    public static final short m1916component1Mh2AYeg(int i) {
        return m1921getCharactersMh2AYeg(i);
    }

    /* renamed from: component2-Mh2AYeg  reason: not valid java name */
    public static final short m1917component2Mh2AYeg(int i) {
        return m1920getBytesMh2AYeg(i);
    }
}
