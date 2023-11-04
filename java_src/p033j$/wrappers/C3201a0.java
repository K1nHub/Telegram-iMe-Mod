package p033j$.wrappers;

import java.util.function.LongBinaryOperator;
import p033j$.util.function.InterfaceC2828n;
/* renamed from: j$.wrappers.a0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3201a0 implements InterfaceC2828n {

    /* renamed from: a */
    final /* synthetic */ LongBinaryOperator f1300a;

    private /* synthetic */ C3201a0(LongBinaryOperator longBinaryOperator) {
        this.f1300a = longBinaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2828n m219a(LongBinaryOperator longBinaryOperator) {
        if (longBinaryOperator == null) {
            return null;
        }
        return longBinaryOperator instanceof C3203b0 ? ((C3203b0) longBinaryOperator).f1302a : new C3201a0(longBinaryOperator);
    }

    @Override // p033j$.util.function.InterfaceC2828n
    public /* synthetic */ long applyAsLong(long j, long j2) {
        return this.f1300a.applyAsLong(j, j2);
    }
}
