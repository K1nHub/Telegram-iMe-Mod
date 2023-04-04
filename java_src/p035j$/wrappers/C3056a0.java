package p035j$.wrappers;

import java.util.function.IntUnaryOperator;
/* renamed from: j$.wrappers.a0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3056a0 {

    /* renamed from: a */
    final /* synthetic */ IntUnaryOperator f1172a;

    private /* synthetic */ C3056a0(IntUnaryOperator intUnaryOperator) {
        this.f1172a = intUnaryOperator;
    }

    /* renamed from: b */
    public static /* synthetic */ C3056a0 m160b(IntUnaryOperator intUnaryOperator) {
        if (intUnaryOperator == null) {
            return null;
        }
        return intUnaryOperator instanceof AbstractC3058b0 ? ((AbstractC3058b0) intUnaryOperator).f1174a : new C3056a0(intUnaryOperator);
    }

    /* renamed from: a */
    public int m161a(int i) {
        return this.f1172a.applyAsInt(i);
    }
}
