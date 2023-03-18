package p034j$.wrappers;

import java.util.function.DoubleUnaryOperator;
/* renamed from: j$.wrappers.J */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2943J {

    /* renamed from: a */
    final /* synthetic */ DoubleUnaryOperator f1143a;

    private /* synthetic */ C2943J(DoubleUnaryOperator doubleUnaryOperator) {
        this.f1143a = doubleUnaryOperator;
    }

    /* renamed from: b */
    public static /* synthetic */ C2943J m222b(DoubleUnaryOperator doubleUnaryOperator) {
        if (doubleUnaryOperator == null) {
            return null;
        }
        return doubleUnaryOperator instanceof AbstractC2945K ? ((AbstractC2945K) doubleUnaryOperator).f1145a : new C2943J(doubleUnaryOperator);
    }

    /* renamed from: a */
    public double m223a(double d) {
        return this.f1143a.applyAsDouble(d);
    }
}
