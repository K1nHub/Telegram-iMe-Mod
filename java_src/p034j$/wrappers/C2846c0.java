package p034j$.wrappers;

import java.util.function.LongBinaryOperator;
import p034j$.util.function.InterfaceC2463o;
/* renamed from: j$.wrappers.c0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2846c0 implements InterfaceC2463o {

    /* renamed from: a */
    final /* synthetic */ LongBinaryOperator f1165a;

    private /* synthetic */ C2846c0(LongBinaryOperator longBinaryOperator) {
        this.f1165a = longBinaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2463o m161a(LongBinaryOperator longBinaryOperator) {
        if (longBinaryOperator == null) {
            return null;
        }
        return longBinaryOperator instanceof C2848d0 ? ((C2848d0) longBinaryOperator).f1167a : new C2846c0(longBinaryOperator);
    }

    @Override // p034j$.util.function.InterfaceC2463o
    public /* synthetic */ long applyAsLong(long j, long j2) {
        return this.f1165a.applyAsLong(j, j2);
    }
}
