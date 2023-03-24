package p034j$.wrappers;

import java.util.function.DoubleUnaryOperator;
/* renamed from: j$.wrappers.J */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2957J {

    /* renamed from: a */
    final /* synthetic */ DoubleUnaryOperator f1144a;

    private /* synthetic */ C2957J(DoubleUnaryOperator doubleUnaryOperator) {
        this.f1144a = doubleUnaryOperator;
    }

    /* renamed from: b */
    public static /* synthetic */ C2957J m221b(DoubleUnaryOperator doubleUnaryOperator) {
        if (doubleUnaryOperator == null) {
            return null;
        }
        return doubleUnaryOperator instanceof AbstractC2959K ? ((AbstractC2959K) doubleUnaryOperator).f1146a : new C2957J(doubleUnaryOperator);
    }

    /* renamed from: a */
    public double m222a(double d) {
        return this.f1144a.applyAsDouble(d);
    }
}
