package p034j$.wrappers;

import java.util.function.LongBinaryOperator;
import p034j$.util.function.InterfaceC2601o;
/* renamed from: j$.wrappers.c0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2984c0 implements InterfaceC2601o {

    /* renamed from: a */
    final /* synthetic */ LongBinaryOperator f1171a;

    private /* synthetic */ C2984c0(LongBinaryOperator longBinaryOperator) {
        this.f1171a = longBinaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2601o m160a(LongBinaryOperator longBinaryOperator) {
        if (longBinaryOperator == null) {
            return null;
        }
        return longBinaryOperator instanceof C2986d0 ? ((C2986d0) longBinaryOperator).f1173a : new C2984c0(longBinaryOperator);
    }

    @Override // p034j$.util.function.InterfaceC2601o
    public /* synthetic */ long applyAsLong(long j, long j2) {
        return this.f1171a.applyAsLong(j, j2);
    }
}
