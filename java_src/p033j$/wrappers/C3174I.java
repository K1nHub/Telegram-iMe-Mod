package p033j$.wrappers;

import java.util.function.DoubleUnaryOperator;
/* renamed from: j$.wrappers.I */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3174I {

    /* renamed from: a */
    final /* synthetic */ DoubleUnaryOperator f1278a;

    private /* synthetic */ C3174I(DoubleUnaryOperator doubleUnaryOperator) {
        this.f1278a = doubleUnaryOperator;
    }

    /* renamed from: b */
    public static /* synthetic */ C3174I m263b(DoubleUnaryOperator doubleUnaryOperator) {
        if (doubleUnaryOperator == null) {
            return null;
        }
        return doubleUnaryOperator instanceof AbstractC3176J ? ((AbstractC3176J) doubleUnaryOperator).f1280a : new C3174I(doubleUnaryOperator);
    }

    /* renamed from: a */
    public double m264a(double d) {
        return this.f1278a.applyAsDouble(d);
    }
}
