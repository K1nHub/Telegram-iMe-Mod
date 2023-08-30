package p033j$.wrappers;

import java.util.function.DoubleUnaryOperator;
/* renamed from: j$.wrappers.J */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3324J {

    /* renamed from: a */
    final /* synthetic */ DoubleUnaryOperator f1242a;

    private /* synthetic */ C3324J(DoubleUnaryOperator doubleUnaryOperator) {
        this.f1242a = doubleUnaryOperator;
    }

    /* renamed from: b */
    public static /* synthetic */ C3324J m225b(DoubleUnaryOperator doubleUnaryOperator) {
        if (doubleUnaryOperator == null) {
            return null;
        }
        return doubleUnaryOperator instanceof AbstractC3326K ? ((AbstractC3326K) doubleUnaryOperator).f1244a : new C3324J(doubleUnaryOperator);
    }

    /* renamed from: a */
    public double m226a(double d) {
        return this.f1242a.applyAsDouble(d);
    }
}
