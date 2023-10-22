package p033j$.wrappers;

import java.util.function.DoubleUnaryOperator;
/* renamed from: j$.wrappers.I */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3175I {

    /* renamed from: a */
    final /* synthetic */ DoubleUnaryOperator f1278a;

    private /* synthetic */ C3175I(DoubleUnaryOperator doubleUnaryOperator) {
        this.f1278a = doubleUnaryOperator;
    }

    /* renamed from: b */
    public static /* synthetic */ C3175I m259b(DoubleUnaryOperator doubleUnaryOperator) {
        if (doubleUnaryOperator == null) {
            return null;
        }
        return doubleUnaryOperator instanceof AbstractC3177J ? ((AbstractC3177J) doubleUnaryOperator).f1280a : new C3175I(doubleUnaryOperator);
    }

    /* renamed from: a */
    public double m260a(double d) {
        return this.f1278a.applyAsDouble(d);
    }
}
