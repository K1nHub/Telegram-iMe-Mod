package p033j$.wrappers;

import java.util.function.DoubleUnaryOperator;
/* renamed from: j$.wrappers.J */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3240J {

    /* renamed from: a */
    final /* synthetic */ DoubleUnaryOperator f1233a;

    private /* synthetic */ C3240J(DoubleUnaryOperator doubleUnaryOperator) {
        this.f1233a = doubleUnaryOperator;
    }

    /* renamed from: b */
    public static /* synthetic */ C3240J m225b(DoubleUnaryOperator doubleUnaryOperator) {
        if (doubleUnaryOperator == null) {
            return null;
        }
        return doubleUnaryOperator instanceof AbstractC3242K ? ((AbstractC3242K) doubleUnaryOperator).f1235a : new C3240J(doubleUnaryOperator);
    }

    /* renamed from: a */
    public double m226a(double d) {
        return this.f1233a.applyAsDouble(d);
    }
}
