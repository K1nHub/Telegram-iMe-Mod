package p034j$.wrappers;

import java.util.function.IntUnaryOperator;
/* renamed from: j$.wrappers.a0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3082a0 {

    /* renamed from: a */
    final /* synthetic */ IntUnaryOperator f1170a;

    private /* synthetic */ C3082a0(IntUnaryOperator intUnaryOperator) {
        this.f1170a = intUnaryOperator;
    }

    /* renamed from: b */
    public static /* synthetic */ C3082a0 m151b(IntUnaryOperator intUnaryOperator) {
        if (intUnaryOperator == null) {
            return null;
        }
        return intUnaryOperator instanceof AbstractC3084b0 ? ((AbstractC3084b0) intUnaryOperator).f1172a : new C3082a0(intUnaryOperator);
    }

    /* renamed from: a */
    public int m152a(int i) {
        return this.f1170a.applyAsInt(i);
    }
}
