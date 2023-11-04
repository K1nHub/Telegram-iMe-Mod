package p033j$.wrappers;

import java.util.function.IntUnaryOperator;
/* renamed from: j$.wrappers.Y */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3198Y {

    /* renamed from: a */
    final /* synthetic */ IntUnaryOperator f1297a;

    private /* synthetic */ C3198Y(IntUnaryOperator intUnaryOperator) {
        this.f1297a = intUnaryOperator;
    }

    /* renamed from: b */
    public static /* synthetic */ C3198Y m223b(IntUnaryOperator intUnaryOperator) {
        if (intUnaryOperator == null) {
            return null;
        }
        return intUnaryOperator instanceof AbstractC3199Z ? ((AbstractC3199Z) intUnaryOperator).f1298a : new C3198Y(intUnaryOperator);
    }

    /* renamed from: a */
    public int m224a(int i) {
        return this.f1297a.applyAsInt(i);
    }
}
