package org.ton.bigint;

import java.math.BigInteger;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BigIntJvm.kt */
/* loaded from: classes6.dex */
public final class BigIntJvmKt {
    public static final BigInteger toBigInt(int i) {
        BigInteger valueOf = BigInteger.valueOf(i);
        Intrinsics.checkNotNullExpressionValue(valueOf, "valueOf(this.toLong())");
        return valueOf;
    }

    public static final BigInteger toBigInt(long j) {
        BigInteger valueOf = BigInteger.valueOf(j);
        Intrinsics.checkNotNullExpressionValue(valueOf, "valueOf(this)");
        return valueOf;
    }

    public static final int getBitLength(BigInteger bigInteger) {
        Intrinsics.checkNotNullParameter(bigInteger, "<this>");
        return bigInteger.bitLength();
    }

    public static final int getSign(BigInteger bigInteger) {
        Intrinsics.checkNotNullParameter(bigInteger, "<this>");
        return bigInteger.signum();
    }

    public static final BigInteger minus(BigInteger bigInteger, BigInteger other) {
        Intrinsics.checkNotNullParameter(bigInteger, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        BigInteger subtract = bigInteger.subtract(other);
        Intrinsics.checkNotNullExpressionValue(subtract, "subtract(other)");
        return subtract;
    }

    public static final BigInteger times(BigInteger bigInteger, BigInteger other) {
        Intrinsics.checkNotNullParameter(bigInteger, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        BigInteger multiply = bigInteger.multiply(other);
        Intrinsics.checkNotNullExpressionValue(multiply, "multiply(other)");
        return multiply;
    }

    public static final BigInteger unaryMinus(BigInteger bigInteger) {
        Intrinsics.checkNotNullParameter(bigInteger, "<this>");
        BigInteger negate = bigInteger.negate();
        Intrinsics.checkNotNullExpressionValue(negate, "negate()");
        return negate;
    }

    public static final BigInteger shr(BigInteger bigInteger, int i) {
        Intrinsics.checkNotNullParameter(bigInteger, "<this>");
        BigInteger shiftRight = bigInteger.shiftRight(i);
        Intrinsics.checkNotNullExpressionValue(shiftRight, "shiftRight(shr)");
        return shiftRight;
    }

    public static final BigInteger shl(BigInteger bigInteger, int i) {
        Intrinsics.checkNotNullParameter(bigInteger, "<this>");
        BigInteger shiftLeft = bigInteger.shiftLeft(i);
        Intrinsics.checkNotNullExpressionValue(shiftLeft, "shiftLeft(shl)");
        return shiftLeft;
    }

    public static final BigInteger and(BigInteger bigInteger, BigInteger and) {
        Intrinsics.checkNotNullParameter(bigInteger, "<this>");
        Intrinsics.checkNotNullParameter(and, "and");
        BigInteger and2 = bigInteger.and(and);
        Intrinsics.checkNotNullExpressionValue(and2, "and(and)");
        return and2;
    }
}
