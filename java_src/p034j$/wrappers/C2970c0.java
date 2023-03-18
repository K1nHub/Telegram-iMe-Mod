package p034j$.wrappers;

import java.util.function.LongBinaryOperator;
import p034j$.util.function.InterfaceC2587o;
/* renamed from: j$.wrappers.c0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2970c0 implements InterfaceC2587o {

    /* renamed from: a */
    final /* synthetic */ LongBinaryOperator f1170a;

    private /* synthetic */ C2970c0(LongBinaryOperator longBinaryOperator) {
        this.f1170a = longBinaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2587o m161a(LongBinaryOperator longBinaryOperator) {
        if (longBinaryOperator == null) {
            return null;
        }
        return longBinaryOperator instanceof C2972d0 ? ((C2972d0) longBinaryOperator).f1172a : new C2970c0(longBinaryOperator);
    }

    @Override // p034j$.util.function.InterfaceC2587o
    public /* synthetic */ long applyAsLong(long j, long j2) {
        return this.f1170a.applyAsLong(j, j2);
    }
}
