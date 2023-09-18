package p033j$.wrappers;

import java.util.function.IntUnaryOperator;
/* renamed from: j$.wrappers.a0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3263a0 {

    /* renamed from: a */
    final /* synthetic */ IntUnaryOperator f1256a;

    private /* synthetic */ C3263a0(IntUnaryOperator intUnaryOperator) {
        this.f1256a = intUnaryOperator;
    }

    /* renamed from: b */
    public static /* synthetic */ C3263a0 m169b(IntUnaryOperator intUnaryOperator) {
        if (intUnaryOperator == null) {
            return null;
        }
        return intUnaryOperator instanceof AbstractC3265b0 ? ((AbstractC3265b0) intUnaryOperator).f1258a : new C3263a0(intUnaryOperator);
    }

    /* renamed from: a */
    public int m170a(int i) {
        return this.f1256a.applyAsInt(i);
    }
}
