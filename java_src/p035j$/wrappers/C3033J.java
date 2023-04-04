package p035j$.wrappers;

import java.util.function.DoubleUnaryOperator;
/* renamed from: j$.wrappers.J */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3033J {

    /* renamed from: a */
    final /* synthetic */ DoubleUnaryOperator f1149a;

    private /* synthetic */ C3033J(DoubleUnaryOperator doubleUnaryOperator) {
        this.f1149a = doubleUnaryOperator;
    }

    /* renamed from: b */
    public static /* synthetic */ C3033J m216b(DoubleUnaryOperator doubleUnaryOperator) {
        if (doubleUnaryOperator == null) {
            return null;
        }
        return doubleUnaryOperator instanceof AbstractC3035K ? ((AbstractC3035K) doubleUnaryOperator).f1151a : new C3033J(doubleUnaryOperator);
    }

    /* renamed from: a */
    public double m217a(double d) {
        return this.f1149a.applyAsDouble(d);
    }
}
