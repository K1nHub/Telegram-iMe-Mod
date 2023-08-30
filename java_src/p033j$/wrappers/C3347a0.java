package p033j$.wrappers;

import java.util.function.IntUnaryOperator;
/* renamed from: j$.wrappers.a0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3347a0 {

    /* renamed from: a */
    final /* synthetic */ IntUnaryOperator f1265a;

    private /* synthetic */ C3347a0(IntUnaryOperator intUnaryOperator) {
        this.f1265a = intUnaryOperator;
    }

    /* renamed from: b */
    public static /* synthetic */ C3347a0 m169b(IntUnaryOperator intUnaryOperator) {
        if (intUnaryOperator == null) {
            return null;
        }
        return intUnaryOperator instanceof AbstractC3349b0 ? ((AbstractC3349b0) intUnaryOperator).f1267a : new C3347a0(intUnaryOperator);
    }

    /* renamed from: a */
    public int m170a(int i) {
        return this.f1265a.applyAsInt(i);
    }
}
