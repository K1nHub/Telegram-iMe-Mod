package p033j$.wrappers;

import java.util.function.LongBinaryOperator;
import p033j$.util.function.InterfaceC2829o;
/* renamed from: j$.wrappers.c0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3212c0 implements InterfaceC2829o {

    /* renamed from: a */
    final /* synthetic */ LongBinaryOperator f1256a;

    private /* synthetic */ C3212c0(LongBinaryOperator longBinaryOperator) {
        this.f1256a = longBinaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2829o m146a(LongBinaryOperator longBinaryOperator) {
        if (longBinaryOperator == null) {
            return null;
        }
        return longBinaryOperator instanceof C3214d0 ? ((C3214d0) longBinaryOperator).f1258a : new C3212c0(longBinaryOperator);
    }

    @Override // p033j$.util.function.InterfaceC2829o
    public /* synthetic */ long applyAsLong(long j, long j2) {
        return this.f1256a.applyAsLong(j, j2);
    }
}