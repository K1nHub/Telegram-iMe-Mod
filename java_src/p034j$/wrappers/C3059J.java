package p034j$.wrappers;

import java.util.function.DoubleUnaryOperator;
/* renamed from: j$.wrappers.J */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3059J {

    /* renamed from: a */
    final /* synthetic */ DoubleUnaryOperator f1147a;

    private /* synthetic */ C3059J(DoubleUnaryOperator doubleUnaryOperator) {
        this.f1147a = doubleUnaryOperator;
    }

    /* renamed from: b */
    public static /* synthetic */ C3059J m207b(DoubleUnaryOperator doubleUnaryOperator) {
        if (doubleUnaryOperator == null) {
            return null;
        }
        return doubleUnaryOperator instanceof AbstractC3061K ? ((AbstractC3061K) doubleUnaryOperator).f1149a : new C3059J(doubleUnaryOperator);
    }

    /* renamed from: a */
    public double m208a(double d) {
        return this.f1147a.applyAsDouble(d);
    }
}
