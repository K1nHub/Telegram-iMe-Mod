package p033j$.wrappers;

import java.util.function.DoubleUnaryOperator;
/* renamed from: j$.wrappers.I */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3179I {

    /* renamed from: a */
    final /* synthetic */ DoubleUnaryOperator f1278a;

    private /* synthetic */ C3179I(DoubleUnaryOperator doubleUnaryOperator) {
        this.f1278a = doubleUnaryOperator;
    }

    /* renamed from: b */
    public static /* synthetic */ C3179I m260b(DoubleUnaryOperator doubleUnaryOperator) {
        if (doubleUnaryOperator == null) {
            return null;
        }
        return doubleUnaryOperator instanceof AbstractC3181J ? ((AbstractC3181J) doubleUnaryOperator).f1280a : new C3179I(doubleUnaryOperator);
    }

    /* renamed from: a */
    public double m261a(double d) {
        return this.f1278a.applyAsDouble(d);
    }
}
