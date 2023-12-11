package p033j$.util.stream;

import java.util.Collections;
import java.util.EnumSet;
/* renamed from: j$.util.stream.l */
/* loaded from: classes2.dex */
public abstract class AbstractC3063l {
    static {
        EnumC3039h enumC3039h = EnumC3039h.CONCURRENT;
        EnumC3039h enumC3039h2 = EnumC3039h.UNORDERED;
        EnumC3039h enumC3039h3 = EnumC3039h.IDENTITY_FINISH;
        Collections.unmodifiableSet(EnumSet.of(enumC3039h, enumC3039h2, enumC3039h3));
        Collections.unmodifiableSet(EnumSet.of(enumC3039h, enumC3039h2));
        Collections.unmodifiableSet(EnumSet.of(enumC3039h3));
        Collections.unmodifiableSet(EnumSet.of(enumC3039h2, enumC3039h3));
        Collections.emptySet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static double m442a(double[] dArr) {
        double d = dArr[0] + dArr[1];
        double d2 = dArr[dArr.length - 1];
        return (Double.isNaN(d) && Double.isInfinite(d2)) ? d2 : d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static double[] m441b(double[] dArr, double d) {
        double d2 = d - dArr[1];
        double d3 = dArr[0];
        double d4 = d3 + d2;
        dArr[1] = (d4 - d3) - d2;
        dArr[0] = d4;
        return dArr;
    }
}
