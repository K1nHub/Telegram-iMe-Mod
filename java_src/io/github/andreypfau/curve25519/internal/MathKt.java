package io.github.andreypfau.curve25519.internal;

import kotlin.ULong;
import kotlin.ULongArray;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: math.kt */
/* loaded from: classes4.dex */
public final class MathKt {
    private static final long MASK32 = ULong.m1996constructorimpl(ULong.m1996constructorimpl(4294967296L) - 1);

    /* renamed from: mul64-h-0OkrE$default  reason: not valid java name */
    public static /* synthetic */ long[] m1895mul64h0OkrE$default(long j, long j2, long[] jArr, int i, Object obj) {
        if ((i & 4) != 0) {
            jArr = ULongArray.m2002constructorimpl(2);
        }
        return m1894mul64h0OkrE(j, j2, jArr);
    }

    /* renamed from: mul64-h-0OkrE  reason: not valid java name */
    public static final long[] m1894mul64h0OkrE(long j, long j2, long[] output) {
        Intrinsics.checkNotNullParameter(output, "output");
        long j3 = MASK32;
        long m1996constructorimpl = ULong.m1996constructorimpl(j & j3);
        long m1996constructorimpl2 = ULong.m1996constructorimpl(j >>> 32);
        long m1996constructorimpl3 = ULong.m1996constructorimpl(j2 & j3);
        long m1996constructorimpl4 = ULong.m1996constructorimpl(j2 >>> 32);
        long m1996constructorimpl5 = ULong.m1996constructorimpl(ULong.m1996constructorimpl(m1996constructorimpl3 * m1996constructorimpl2) + ULong.m1996constructorimpl(ULong.m1996constructorimpl(m1996constructorimpl * m1996constructorimpl3) >>> 32));
        long m1996constructorimpl6 = ULong.m1996constructorimpl(j3 & m1996constructorimpl5);
        ULongArray.m2012setk8EXiF4(output, 0, ULong.m1996constructorimpl(ULong.m1996constructorimpl(ULong.m1996constructorimpl(m1996constructorimpl2 * m1996constructorimpl4) + ULong.m1996constructorimpl(m1996constructorimpl5 >>> 32)) + ULong.m1996constructorimpl(ULong.m1996constructorimpl(m1996constructorimpl6 + ULong.m1996constructorimpl(m1996constructorimpl * m1996constructorimpl4)) >>> 32)));
        ULongArray.m2012setk8EXiF4(output, 1, ULong.m1996constructorimpl(j * j2));
        return output;
    }
}
