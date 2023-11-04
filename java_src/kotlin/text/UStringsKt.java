package kotlin.text;

import com.google.android.exoplayer2.source.rtsp.RtpPacket;
import kotlin.KotlinNothingValueException;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.UnsignedKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: UStrings.kt */
/* loaded from: classes4.dex */
public final class UStringsKt {
    /* renamed from: toString-V7xB4Y4  reason: not valid java name */
    public static final String m2058toStringV7xB4Y4(int i, int i2) {
        int checkRadix;
        checkRadix = CharsKt__CharJVMKt.checkRadix(i2);
        String l = Long.toString(i & 4294967295L, checkRadix);
        Intrinsics.checkNotNullExpressionValue(l, "toString(this, checkRadix(radix))");
        return l;
    }

    /* renamed from: toString-JSWoG40  reason: not valid java name */
    public static final String m2057toStringJSWoG40(long j, int i) {
        int checkRadix;
        checkRadix = CharsKt__CharJVMKt.checkRadix(i);
        return UnsignedKt.ulongToString(j, checkRadix);
    }

    public static final byte toUByte(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UByte uByteOrNull = toUByteOrNull(str);
        if (uByteOrNull != null) {
            return uByteOrNull.m1954unboximpl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    public static final short toUShort(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UShort uShortOrNull = toUShortOrNull(str);
        if (uShortOrNull != null) {
            return uShortOrNull.m2020unboximpl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    public static final int toUInt(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UInt uIntOrNull = toUIntOrNull(str);
        if (uIntOrNull != null) {
            return uIntOrNull.m1976unboximpl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    public static final long toULong(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        ULong uLongOrNull = toULongOrNull(str);
        if (uLongOrNull != null) {
            return uLongOrNull.m1998unboximpl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    public static final UByte toUByteOrNull(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toUByteOrNull(str, 10);
    }

    public static final UByte toUByteOrNull(String str, int i) {
        int compare;
        Intrinsics.checkNotNullParameter(str, "<this>");
        UInt uIntOrNull = toUIntOrNull(str, i);
        if (uIntOrNull != null) {
            int m1976unboximpl = uIntOrNull.m1976unboximpl();
            compare = Integer.compare(m1976unboximpl ^ Integer.MIN_VALUE, UInt.m1972constructorimpl(255) ^ Integer.MIN_VALUE);
            if (compare > 0) {
                return null;
            }
            return UByte.m1949boximpl(UByte.m1950constructorimpl((byte) m1976unboximpl));
        }
        return null;
    }

    public static final UShort toUShortOrNull(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toUShortOrNull(str, 10);
    }

    public static final UShort toUShortOrNull(String str, int i) {
        int compare;
        Intrinsics.checkNotNullParameter(str, "<this>");
        UInt uIntOrNull = toUIntOrNull(str, i);
        if (uIntOrNull != null) {
            int m1976unboximpl = uIntOrNull.m1976unboximpl();
            compare = Integer.compare(m1976unboximpl ^ Integer.MIN_VALUE, UInt.m1972constructorimpl(RtpPacket.MAX_SEQUENCE_NUMBER) ^ Integer.MIN_VALUE);
            if (compare > 0) {
                return null;
            }
            return UShort.m2015boximpl(UShort.m2016constructorimpl((short) m1976unboximpl));
        }
        return null;
    }

    public static final UInt toUIntOrNull(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toUIntOrNull(str, 10);
    }

    public static final UInt toUIntOrNull(String str, int i) {
        int compare;
        int compare2;
        int compare3;
        Intrinsics.checkNotNullParameter(str, "<this>");
        CharsKt__CharJVMKt.checkRadix(i);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i2 = 0;
        char charAt = str.charAt(0);
        int i3 = 1;
        if (Intrinsics.compare((int) charAt, 48) >= 0) {
            i3 = 0;
        } else if (length == 1 || charAt != '+') {
            return null;
        }
        int m1972constructorimpl = UInt.m1972constructorimpl(i);
        int i4 = 119304647;
        while (i3 < length) {
            int digitOf = CharsKt__CharJVMKt.digitOf(str.charAt(i3), i);
            if (digitOf < 0) {
                return null;
            }
            compare = Integer.compare(i2 ^ Integer.MIN_VALUE, i4 ^ Integer.MIN_VALUE);
            if (compare > 0) {
                if (i4 == 119304647) {
                    i4 = UStringsKt$$ExternalSyntheticBackport1.m133m(-1, m1972constructorimpl);
                    compare3 = Integer.compare(i2 ^ Integer.MIN_VALUE, i4 ^ Integer.MIN_VALUE);
                    if (compare3 > 0) {
                    }
                }
                return null;
            }
            int m1972constructorimpl2 = UInt.m1972constructorimpl(i2 * m1972constructorimpl);
            int m1972constructorimpl3 = UInt.m1972constructorimpl(UInt.m1972constructorimpl(digitOf) + m1972constructorimpl2);
            compare2 = Integer.compare(m1972constructorimpl3 ^ Integer.MIN_VALUE, m1972constructorimpl2 ^ Integer.MIN_VALUE);
            if (compare2 < 0) {
                return null;
            }
            i3++;
            i2 = m1972constructorimpl3;
        }
        return UInt.m1971boximpl(i2);
    }

    public static final ULong toULongOrNull(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toULongOrNull(str, 10);
    }

    public static final ULong toULongOrNull(String str, int i) {
        int digitOf;
        int compare;
        int compare2;
        int compare3;
        Intrinsics.checkNotNullParameter(str, "<this>");
        CharsKt__CharJVMKt.checkRadix(i);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        long j = -1;
        int i2 = 0;
        char charAt = str.charAt(0);
        if (Intrinsics.compare((int) charAt, 48) < 0) {
            if (length == 1 || charAt != '+') {
                return null;
            }
            i2 = 1;
        }
        long m1994constructorimpl = ULong.m1994constructorimpl(i);
        long j2 = 0;
        long j3 = 512409557603043100L;
        while (i2 < length) {
            if (CharsKt__CharJVMKt.digitOf(str.charAt(i2), i) < 0) {
                return null;
            }
            compare = Long.compare(j2 ^ Long.MIN_VALUE, j3 ^ Long.MIN_VALUE);
            if (compare > 0) {
                if (j3 == 512409557603043100L) {
                    j3 = UStringsKt$$ExternalSyntheticBackport3.m131m(j, m1994constructorimpl);
                    compare3 = Long.compare(j2 ^ Long.MIN_VALUE, j3 ^ Long.MIN_VALUE);
                    if (compare3 > 0) {
                    }
                }
                return null;
            }
            long m1994constructorimpl2 = ULong.m1994constructorimpl(j2 * m1994constructorimpl);
            long m1994constructorimpl3 = ULong.m1994constructorimpl(ULong.m1994constructorimpl(UInt.m1972constructorimpl(digitOf) & 4294967295L) + m1994constructorimpl2);
            compare2 = Long.compare(m1994constructorimpl3 ^ Long.MIN_VALUE, m1994constructorimpl2 ^ Long.MIN_VALUE);
            if (compare2 < 0) {
                return null;
            }
            i2++;
            j2 = m1994constructorimpl3;
            j = -1;
        }
        return ULong.m1993boximpl(j2);
    }
}
