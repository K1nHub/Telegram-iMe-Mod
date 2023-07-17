package p033j$.wrappers;

import java.util.function.DoubleUnaryOperator;
/* renamed from: j$.wrappers.J */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3185J {

    /* renamed from: a */
    final /* synthetic */ DoubleUnaryOperator f1229a;

    private /* synthetic */ C3185J(DoubleUnaryOperator doubleUnaryOperator) {
        this.f1229a = doubleUnaryOperator;
    }

    /* renamed from: b */
    public static /* synthetic */ C3185J m207b(DoubleUnaryOperator doubleUnaryOperator) {
        if (doubleUnaryOperator == null) {
            return null;
        }
        return doubleUnaryOperator instanceof AbstractC3187K ? ((AbstractC3187K) doubleUnaryOperator).f1231a : new C3185J(doubleUnaryOperator);
    }

    /* renamed from: a */
    public double m208a(double d) {
        return this.f1229a.applyAsDouble(d);
    }
}
