package p034j$.wrappers;

import java.util.function.IntUnaryOperator;
/* renamed from: j$.wrappers.a0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2966a0 {

    /* renamed from: a */
    final /* synthetic */ IntUnaryOperator f1166a;

    private /* synthetic */ C2966a0(IntUnaryOperator intUnaryOperator) {
        this.f1166a = intUnaryOperator;
    }

    /* renamed from: b */
    public static /* synthetic */ C2966a0 m166b(IntUnaryOperator intUnaryOperator) {
        if (intUnaryOperator == null) {
            return null;
        }
        return intUnaryOperator instanceof AbstractC2968b0 ? ((AbstractC2968b0) intUnaryOperator).f1168a : new C2966a0(intUnaryOperator);
    }

    /* renamed from: a */
    public int m167a(int i) {
        return this.f1166a.applyAsInt(i);
    }
}
