package p033j$.wrappers;

import java.util.function.DoubleUnaryOperator;
/* renamed from: j$.wrappers.J */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3185J {

    /* renamed from: a */
    final /* synthetic */ DoubleUnaryOperator f1232a;

    private /* synthetic */ C3185J(DoubleUnaryOperator doubleUnaryOperator) {
        this.f1232a = doubleUnaryOperator;
    }

    /* renamed from: b */
    public static /* synthetic */ C3185J m225b(DoubleUnaryOperator doubleUnaryOperator) {
        if (doubleUnaryOperator == null) {
            return null;
        }
        return doubleUnaryOperator instanceof AbstractC3187K ? ((AbstractC3187K) doubleUnaryOperator).f1234a : new C3185J(doubleUnaryOperator);
    }

    /* renamed from: a */
    public double m226a(double d) {
        return this.f1232a.applyAsDouble(d);
    }
}
