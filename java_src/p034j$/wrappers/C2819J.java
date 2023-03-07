package p034j$.wrappers;

import java.util.function.DoubleUnaryOperator;
/* renamed from: j$.wrappers.J */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2819J {

    /* renamed from: a */
    final /* synthetic */ DoubleUnaryOperator f1138a;

    private /* synthetic */ C2819J(DoubleUnaryOperator doubleUnaryOperator) {
        this.f1138a = doubleUnaryOperator;
    }

    /* renamed from: b */
    public static /* synthetic */ C2819J m222b(DoubleUnaryOperator doubleUnaryOperator) {
        if (doubleUnaryOperator == null) {
            return null;
        }
        return doubleUnaryOperator instanceof AbstractC2821K ? ((AbstractC2821K) doubleUnaryOperator).f1140a : new C2819J(doubleUnaryOperator);
    }

    /* renamed from: a */
    public double m223a(double d) {
        return this.f1138a.applyAsDouble(d);
    }
}
