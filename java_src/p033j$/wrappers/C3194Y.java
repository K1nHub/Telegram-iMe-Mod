package p033j$.wrappers;

import java.util.function.IntUnaryOperator;
/* renamed from: j$.wrappers.Y */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3194Y {

    /* renamed from: a */
    final /* synthetic */ IntUnaryOperator f1297a;

    private /* synthetic */ C3194Y(IntUnaryOperator intUnaryOperator) {
        this.f1297a = intUnaryOperator;
    }

    /* renamed from: b */
    public static /* synthetic */ C3194Y m222b(IntUnaryOperator intUnaryOperator) {
        if (intUnaryOperator == null) {
            return null;
        }
        return intUnaryOperator instanceof AbstractC3195Z ? ((AbstractC3195Z) intUnaryOperator).f1298a : new C3194Y(intUnaryOperator);
    }

    /* renamed from: a */
    public int m223a(int i) {
        return this.f1297a.applyAsInt(i);
    }
}
