package p034j$.wrappers;

import java.util.function.IntUnaryOperator;
/* renamed from: j$.wrappers.a0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2980a0 {

    /* renamed from: a */
    final /* synthetic */ IntUnaryOperator f1167a;

    private /* synthetic */ C2980a0(IntUnaryOperator intUnaryOperator) {
        this.f1167a = intUnaryOperator;
    }

    /* renamed from: b */
    public static /* synthetic */ C2980a0 m165b(IntUnaryOperator intUnaryOperator) {
        if (intUnaryOperator == null) {
            return null;
        }
        return intUnaryOperator instanceof AbstractC2982b0 ? ((AbstractC2982b0) intUnaryOperator).f1169a : new C2980a0(intUnaryOperator);
    }

    /* renamed from: a */
    public int m166a(int i) {
        return this.f1167a.applyAsInt(i);
    }
}
