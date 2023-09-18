package p033j$.wrappers;

import java.util.function.LongBinaryOperator;
import p033j$.util.function.InterfaceC2884o;
/* renamed from: j$.wrappers.c0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3267c0 implements InterfaceC2884o {

    /* renamed from: a */
    final /* synthetic */ LongBinaryOperator f1260a;

    private /* synthetic */ C3267c0(LongBinaryOperator longBinaryOperator) {
        this.f1260a = longBinaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2884o m164a(LongBinaryOperator longBinaryOperator) {
        if (longBinaryOperator == null) {
            return null;
        }
        return longBinaryOperator instanceof C3269d0 ? ((C3269d0) longBinaryOperator).f1262a : new C3267c0(longBinaryOperator);
    }

    @Override // p033j$.util.function.InterfaceC2884o
    public /* synthetic */ long applyAsLong(long j, long j2) {
        return this.f1260a.applyAsLong(j, j2);
    }
}
