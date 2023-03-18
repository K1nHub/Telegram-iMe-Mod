package com.smedialink.storage.data.utils.extentions;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.smedialink.storage.domain.utils.crypto.Convert;
import java.math.BigDecimal;
import java.math.BigInteger;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NumberExt.kt */
/* loaded from: classes3.dex */
public final class NumberExtKt {
    public static final BigInteger convertToWei(Number number, Convert.Unit unit) {
        Intrinsics.checkNotNullParameter(number, "<this>");
        Intrinsics.checkNotNullParameter(unit, "unit");
        BigDecimal wei = Convert.toWei(number.toString(), unit);
        Intrinsics.checkNotNullExpressionValue(wei, "toWei(this.toString(), unit)");
        return toBigIntegerCatching(wei);
    }

    public static final BigInteger convertFromWei(Number number, Convert.Unit unit) {
        Intrinsics.checkNotNullParameter(number, "<this>");
        Intrinsics.checkNotNullParameter(unit, "unit");
        BigDecimal fromWei = Convert.fromWei(number.toString(), unit);
        Intrinsics.checkNotNullExpressionValue(fromWei, "fromWei(this.toString(), unit)");
        return toBigIntegerCatching(fromWei);
    }

    public static final BigInteger toBigIntegerCatching(BigDecimal bigDecimal) {
        Intrinsics.checkNotNullParameter(bigDecimal, "<this>");
        try {
            BigInteger bigIntegerExact = bigDecimal.toBigIntegerExact();
            Intrinsics.checkNotNullExpressionValue(bigIntegerExact, "{\n    toBigIntegerExact()\n}");
            return bigIntegerExact;
        } catch (ArithmeticException unused) {
            BigInteger bigInteger = bigDecimal.toBigInteger();
            Intrinsics.checkNotNullExpressionValue(bigInteger, "{\n    toBigInteger()\n}");
            return bigInteger;
        }
    }

    public static final boolean isZero(Number number) {
        Intrinsics.checkNotNullParameter(number, "<this>");
        if (number instanceof Float) {
            if (number.floatValue() == BitmapDescriptorFactory.HUE_RED) {
                return true;
            }
        } else if (number instanceof Double) {
            if (number.doubleValue() == 0.0d) {
                return true;
            }
        } else if (number instanceof BigInteger) {
            return Intrinsics.areEqual(number, BigInteger.ZERO);
        } else {
            if (!(number instanceof BigDecimal)) {
                return number instanceof Long ? Intrinsics.areEqual((Object) number, (Object) 0L) : Intrinsics.areEqual((Object) number, (Object) 0);
            } else if (BigDecimal.ZERO.compareTo((BigDecimal) number) == 0) {
                return true;
            }
        }
        return false;
    }

    public static final int orZero(Integer num) {
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    public static final long orZero(Long l) {
        if (l != null) {
            return l.longValue();
        }
        return 0L;
    }

    public static final float orZero(Float f) {
        return f != null ? f.floatValue() : BitmapDescriptorFactory.HUE_RED;
    }

    public static final double orZero(Double d) {
        if (d != null) {
            return d.doubleValue();
        }
        return 0.0d;
    }

    public static final BigDecimal orZero(BigDecimal bigDecimal) {
        if (bigDecimal == null) {
            BigDecimal orZero = BigDecimal.ZERO;
            Intrinsics.checkNotNullExpressionValue(orZero, "orZero");
            return orZero;
        }
        return bigDecimal;
    }
}
