package p033j$.util.stream;

import java.util.Collections;
import java.util.EnumSet;
/* renamed from: j$.util.stream.l */
/* loaded from: classes2.dex */
public abstract class AbstractC3070l {
    static {
        EnumC3046h enumC3046h = EnumC3046h.CONCURRENT;
        EnumC3046h enumC3046h2 = EnumC3046h.UNORDERED;
        EnumC3046h enumC3046h3 = EnumC3046h.IDENTITY_FINISH;
        Collections.unmodifiableSet(EnumSet.of(enumC3046h, enumC3046h2, enumC3046h3));
        Collections.unmodifiableSet(EnumSet.of(enumC3046h, enumC3046h2));
        Collections.unmodifiableSet(EnumSet.of(enumC3046h3));
        Collections.unmodifiableSet(EnumSet.of(enumC3046h2, enumC3046h3));
        Collections.emptySet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static double m378a(double[] dArr) {
        double d = dArr[0] + dArr[1];
        double d2 = dArr[dArr.length - 1];
        return (Double.isNaN(d) && Double.isInfinite(d2)) ? d2 : d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static double[] m377b(double[] dArr, double d) {
        double d2 = d - dArr[1];
        double d3 = dArr[0];
        double d4 = d3 + d2;
        dArr[1] = (d4 - d3) - d2;
        dArr[0] = d4;
        return dArr;
    }
}
