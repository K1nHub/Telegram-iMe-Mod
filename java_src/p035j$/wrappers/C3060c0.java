package p035j$.wrappers;

import java.util.function.LongBinaryOperator;
import p035j$.util.function.InterfaceC2677o;
/* renamed from: j$.wrappers.c0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3060c0 implements InterfaceC2677o {

    /* renamed from: a */
    final /* synthetic */ LongBinaryOperator f1176a;

    private /* synthetic */ C3060c0(LongBinaryOperator longBinaryOperator) {
        this.f1176a = longBinaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2677o m155a(LongBinaryOperator longBinaryOperator) {
        if (longBinaryOperator == null) {
            return null;
        }
        return longBinaryOperator instanceof C3062d0 ? ((C3062d0) longBinaryOperator).f1178a : new C3060c0(longBinaryOperator);
    }

    @Override // p035j$.util.function.InterfaceC2677o
    public /* synthetic */ long applyAsLong(long j, long j2) {
        return this.f1176a.applyAsLong(j, j2);
    }
}
