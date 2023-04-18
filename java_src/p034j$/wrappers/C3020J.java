package p034j$.wrappers;

import java.util.function.DoubleUnaryOperator;
/* renamed from: j$.wrappers.J */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3020J {

    /* renamed from: a */
    final /* synthetic */ DoubleUnaryOperator f1144a;

    private /* synthetic */ C3020J(DoubleUnaryOperator doubleUnaryOperator) {
        this.f1144a = doubleUnaryOperator;
    }

    /* renamed from: b */
    public static /* synthetic */ C3020J m202b(DoubleUnaryOperator doubleUnaryOperator) {
        if (doubleUnaryOperator == null) {
            return null;
        }
        return doubleUnaryOperator instanceof AbstractC3022K ? ((AbstractC3022K) doubleUnaryOperator).f1146a : new C3020J(doubleUnaryOperator);
    }

    /* renamed from: a */
    public double m203a(double d) {
        return this.f1144a.applyAsDouble(d);
    }
}
