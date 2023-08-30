package p033j$.wrappers;

import java.util.function.LongBinaryOperator;
import p033j$.util.function.InterfaceC2968o;
/* renamed from: j$.wrappers.c0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3351c0 implements InterfaceC2968o {

    /* renamed from: a */
    final /* synthetic */ LongBinaryOperator f1269a;

    private /* synthetic */ C3351c0(LongBinaryOperator longBinaryOperator) {
        this.f1269a = longBinaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2968o m164a(LongBinaryOperator longBinaryOperator) {
        if (longBinaryOperator == null) {
            return null;
        }
        return longBinaryOperator instanceof C3353d0 ? ((C3353d0) longBinaryOperator).f1271a : new C3351c0(longBinaryOperator);
    }

    @Override // p033j$.util.function.InterfaceC2968o
    public /* synthetic */ long applyAsLong(long j, long j2) {
        return this.f1269a.applyAsLong(j, j2);
    }
}
