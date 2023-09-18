package p033j$.util.stream;

import java.util.Collections;
import java.util.EnumSet;
/* renamed from: j$.util.stream.l */
/* loaded from: classes2.dex */
public abstract class AbstractC3125l {
    static {
        EnumC3101h enumC3101h = EnumC3101h.CONCURRENT;
        EnumC3101h enumC3101h2 = EnumC3101h.UNORDERED;
        EnumC3101h enumC3101h3 = EnumC3101h.IDENTITY_FINISH;
        Collections.unmodifiableSet(EnumSet.of(enumC3101h, enumC3101h2, enumC3101h3));
        Collections.unmodifiableSet(EnumSet.of(enumC3101h, enumC3101h2));
        Collections.unmodifiableSet(EnumSet.of(enumC3101h3));
        Collections.unmodifiableSet(EnumSet.of(enumC3101h2, enumC3101h3));
        Collections.emptySet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static double m396a(double[] dArr) {
        double d = dArr[0] + dArr[1];
        double d2 = dArr[dArr.length - 1];
        return (Double.isNaN(d) && Double.isInfinite(d2)) ? d2 : d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static double[] m395b(double[] dArr, double d) {
        double d2 = d - dArr[1];
        double d3 = dArr[0];
        double d4 = d3 + d2;
        dArr[1] = (d4 - d3) - d2;
        dArr[0] = d4;
        return dArr;
    }
}
