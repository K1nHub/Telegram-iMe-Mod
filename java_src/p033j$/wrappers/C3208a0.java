package p033j$.wrappers;

import java.util.function.IntUnaryOperator;
/* renamed from: j$.wrappers.a0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3208a0 {

    /* renamed from: a */
    final /* synthetic */ IntUnaryOperator f1252a;

    private /* synthetic */ C3208a0(IntUnaryOperator intUnaryOperator) {
        this.f1252a = intUnaryOperator;
    }

    /* renamed from: b */
    public static /* synthetic */ C3208a0 m151b(IntUnaryOperator intUnaryOperator) {
        if (intUnaryOperator == null) {
            return null;
        }
        return intUnaryOperator instanceof AbstractC3210b0 ? ((AbstractC3210b0) intUnaryOperator).f1254a : new C3208a0(intUnaryOperator);
    }

    /* renamed from: a */
    public int m152a(int i) {
        return this.f1252a.applyAsInt(i);
    }
}
