package io.ktor.utils.p032io.core.internal;

import com.google.android.exoplayer2.extractor.p015ts.PsExtractor;
import com.google.android.exoplayer2.source.rtsp.RtpPacket;
import java.nio.ByteBuffer;
import kotlin.KotlinNothingValueException;
import kotlin.UShort;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.telegram.messenger.CharacterCompat;
/* compiled from: UTF8.kt */
/* renamed from: io.ktor.utils.io.core.internal.UTF8Kt */
/* loaded from: classes4.dex */
public final class UTF8Kt {
    public static final int codePoint(char c, char c2) {
        return ((c - 55232) << 10) | (c2 - CharacterCompat.MIN_LOW_SURROGATE);
    }

    /* renamed from: encodeUTF8-lBXzO7A  reason: not valid java name */
    public static final int m1927encodeUTF8lBXzO7A(ByteBuffer encodeUTF8, CharSequence text, int i, int i2, int i3, int i4) {
        int coerceAtMost;
        Intrinsics.checkNotNullParameter(encodeUTF8, "$this$encodeUTF8");
        Intrinsics.checkNotNullParameter(text, "text");
        int min = Math.min(i2, i + RtpPacket.MAX_SEQUENCE_NUMBER);
        coerceAtMost = RangesKt___RangesKt.coerceAtMost(i4, (int) RtpPacket.MAX_SEQUENCE_NUMBER);
        int i5 = i;
        int i6 = i3;
        while (i6 < coerceAtMost && i5 < min) {
            int i7 = i5 + 1;
            int charAt = text.charAt(i5) & 65535;
            if ((65408 & charAt) == 0) {
                encodeUTF8.put(i6, (byte) charAt);
                i5 = i7;
                i6++;
            } else {
                return m1928encodeUTF8Stage1Vm9B2pQ(encodeUTF8, text, i7 - 1, min, i, i6, coerceAtMost, i3);
            }
        }
        return EncodeResult.m1924constructorimpl(UShort.m2016constructorimpl((short) (i5 - i)), UShort.m2016constructorimpl((short) (i6 - i3)));
    }

    /* renamed from: encodeUTF8Stage1-Vm9B2pQ  reason: not valid java name */
    private static final int m1928encodeUTF8Stage1Vm9B2pQ(ByteBuffer byteBuffer, CharSequence charSequence, int i, int i2, int i3, int i4, int i5, int i6) {
        int i7 = i5 - 3;
        int i8 = i;
        int i9 = i4;
        while (i7 - i9 > 0 && i8 < i2) {
            int i10 = i8 + 1;
            char charAt = charSequence.charAt(i8);
            boolean isHighSurrogate = Character.isHighSurrogate(charAt);
            int i11 = charAt;
            if (isHighSurrogate) {
                if (i10 == i2 || !Character.isLowSurrogate(charSequence.charAt(i10))) {
                    i11 = 63;
                } else {
                    int codePoint = codePoint(charAt, charSequence.charAt(i10));
                    i10++;
                    i11 = codePoint;
                }
            }
            boolean z = false;
            int i12 = 1;
            if (i11 >= 0 && i11 < 128) {
                byteBuffer.put(i9, (byte) i11);
            } else {
                if (128 <= i11 && i11 < 2048) {
                    byteBuffer.put(i9, (byte) (((i11 >> 6) & 31) | PsExtractor.AUDIO_STREAM));
                    byteBuffer.put(i9 + 1, (byte) ((i11 & 63) | 128));
                    i12 = 2;
                } else {
                    if (2048 <= i11 && i11 < 65536) {
                        byteBuffer.put(i9, (byte) (((i11 >> 12) & 15) | 224));
                        byteBuffer.put(i9 + 1, (byte) ((63 & (i11 >> 6)) | 128));
                        byteBuffer.put(i9 + 2, (byte) ((i11 & 63) | 128));
                        i12 = 3;
                    } else {
                        if (65536 <= i11 && i11 < 1114112) {
                            z = true;
                        }
                        if (!z) {
                            malformedCodePoint(i11);
                            throw new KotlinNothingValueException();
                        }
                        byteBuffer.put(i9, (byte) (((i11 >> 18) & 7) | PsExtractor.VIDEO_STREAM_MASK));
                        byteBuffer.put(i9 + 1, (byte) (((i11 >> 12) & 63) | 128));
                        byteBuffer.put(i9 + 2, (byte) ((63 & (i11 >> 6)) | 128));
                        byteBuffer.put(i9 + 3, (byte) ((i11 & 63) | 128));
                        i12 = 4;
                    }
                }
            }
            i9 += i12;
            i8 = i10;
        }
        if (i9 == i7) {
            return m1929encodeUTF8Stage2Vm9B2pQ(byteBuffer, charSequence, i8, i2, i3, i9, i5, i6);
        }
        return EncodeResult.m1924constructorimpl(UShort.m2016constructorimpl((short) (i8 - i3)), UShort.m2016constructorimpl((short) (i9 - i6)));
    }

    /* renamed from: encodeUTF8Stage2-Vm9B2pQ  reason: not valid java name */
    private static final int m1929encodeUTF8Stage2Vm9B2pQ(ByteBuffer byteBuffer, CharSequence charSequence, int i, int i2, int i3, int i4, int i5, int i6) {
        int i7;
        int i8 = i;
        int i9 = i4;
        while (true) {
            int i10 = i5 - i9;
            if (i10 <= 0 || i8 >= i2) {
                break;
            }
            int i11 = i8 + 1;
            char charAt = charSequence.charAt(i8);
            boolean isHighSurrogate = Character.isHighSurrogate(charAt);
            int i12 = charAt;
            if (isHighSurrogate) {
                if (i11 == i2 || !Character.isLowSurrogate(charSequence.charAt(i11))) {
                    i12 = 63;
                } else {
                    int codePoint = codePoint(charAt, charSequence.charAt(i11));
                    i11++;
                    i12 = codePoint;
                }
            }
            int i13 = 1;
            if (1 <= i12 && i12 < 128) {
                i7 = 1;
            } else {
                if (128 <= i12 && i12 < 2048) {
                    i7 = 2;
                } else {
                    if (2048 <= i12 && i12 < 65536) {
                        i7 = 3;
                    } else {
                        if (!(65536 <= i12 && i12 < 1114112)) {
                            malformedCodePoint(i12);
                            throw new KotlinNothingValueException();
                        }
                        i7 = 4;
                    }
                }
            }
            if (i7 > i10) {
                i8 = i11 - 1;
                break;
            }
            if (i12 >= 0 && i12 < 128) {
                byteBuffer.put(i9, (byte) i12);
            } else {
                if (128 <= i12 && i12 < 2048) {
                    byteBuffer.put(i9, (byte) (((i12 >> 6) & 31) | PsExtractor.AUDIO_STREAM));
                    byteBuffer.put(i9 + 1, (byte) ((i12 & 63) | 128));
                    i13 = 2;
                } else {
                    if (2048 <= i12 && i12 < 65536) {
                        byteBuffer.put(i9, (byte) (((i12 >> 12) & 15) | 224));
                        byteBuffer.put(i9 + 1, (byte) ((63 & (i12 >> 6)) | 128));
                        byteBuffer.put(i9 + 2, (byte) ((i12 & 63) | 128));
                        i13 = 3;
                    } else {
                        if (!(65536 <= i12 && i12 < 1114112)) {
                            malformedCodePoint(i12);
                            throw new KotlinNothingValueException();
                        }
                        byteBuffer.put(i9, (byte) (((i12 >> 18) & 7) | PsExtractor.VIDEO_STREAM_MASK));
                        byteBuffer.put(i9 + 1, (byte) (((i12 >> 12) & 63) | 128));
                        byteBuffer.put(i9 + 2, (byte) ((63 & (i12 >> 6)) | 128));
                        byteBuffer.put(i9 + 3, (byte) ((i12 & 63) | 128));
                        i13 = 4;
                    }
                }
            }
            i9 += i13;
            i8 = i11;
        }
        return EncodeResult.m1924constructorimpl(UShort.m2016constructorimpl((short) (i8 - i3)), UShort.m2016constructorimpl((short) (i9 - i6)));
    }

    public static final Void malformedCodePoint(int i) {
        throw new IllegalArgumentException("Malformed code-point " + i + " found");
    }
}
