package p033j$.wrappers;

import java.util.function.LongBinaryOperator;
import p033j$.util.function.InterfaceC2824n;
/* renamed from: j$.wrappers.a0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3197a0 implements InterfaceC2824n {

    /* renamed from: a */
    final /* synthetic */ LongBinaryOperator f1300a;

    private /* synthetic */ C3197a0(LongBinaryOperator longBinaryOperator) {
        this.f1300a = longBinaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2824n m218a(LongBinaryOperator longBinaryOperator) {
        if (longBinaryOperator == null) {
            return null;
        }
        return longBinaryOperator instanceof C3199b0 ? ((C3199b0) longBinaryOperator).f1302a : new C3197a0(longBinaryOperator);
    }

    @Override // p033j$.util.function.InterfaceC2824n
    public /* synthetic */ long applyAsLong(long j, long j2) {
        return this.f1300a.applyAsLong(j, j2);
    }
}
