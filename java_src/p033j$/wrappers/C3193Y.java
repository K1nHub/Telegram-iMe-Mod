package p033j$.wrappers;

import java.util.function.IntUnaryOperator;
/* renamed from: j$.wrappers.Y */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3193Y {

    /* renamed from: a */
    final /* synthetic */ IntUnaryOperator f1297a;

    private /* synthetic */ C3193Y(IntUnaryOperator intUnaryOperator) {
        this.f1297a = intUnaryOperator;
    }

    /* renamed from: b */
    public static /* synthetic */ C3193Y m226b(IntUnaryOperator intUnaryOperator) {
        if (intUnaryOperator == null) {
            return null;
        }
        return intUnaryOperator instanceof AbstractC3194Z ? ((AbstractC3194Z) intUnaryOperator).f1298a : new C3193Y(intUnaryOperator);
    }

    /* renamed from: a */
    public int m227a(int i) {
        return this.f1297a.applyAsInt(i);
    }
}
