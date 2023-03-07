package p034j$.wrappers;

import java.util.function.IntUnaryOperator;
/* renamed from: j$.wrappers.a0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2842a0 {

    /* renamed from: a */
    final /* synthetic */ IntUnaryOperator f1161a;

    private /* synthetic */ C2842a0(IntUnaryOperator intUnaryOperator) {
        this.f1161a = intUnaryOperator;
    }

    /* renamed from: b */
    public static /* synthetic */ C2842a0 m166b(IntUnaryOperator intUnaryOperator) {
        if (intUnaryOperator == null) {
            return null;
        }
        return intUnaryOperator instanceof AbstractC2844b0 ? ((AbstractC2844b0) intUnaryOperator).f1163a : new C2842a0(intUnaryOperator);
    }

    /* renamed from: a */
    public int m167a(int i) {
        return this.f1161a.applyAsInt(i);
    }
}
