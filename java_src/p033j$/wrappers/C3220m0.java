package p033j$.wrappers;

import java.util.function.LongUnaryOperator;
import p033j$.util.function.InterfaceC2828s;
/* renamed from: j$.wrappers.m0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3220m0 implements InterfaceC2828s {

    /* renamed from: a */
    final /* synthetic */ LongUnaryOperator f1324a;

    private /* synthetic */ C3220m0(LongUnaryOperator longUnaryOperator) {
        this.f1324a = longUnaryOperator;
    }

    /* renamed from: c */
    public static /* synthetic */ InterfaceC2828s m186c(LongUnaryOperator longUnaryOperator) {
        if (longUnaryOperator == null) {
            return null;
        }
        return longUnaryOperator instanceof C3222n0 ? ((C3222n0) longUnaryOperator).f1326a : new C3220m0(longUnaryOperator);
    }

    @Override // p033j$.util.function.InterfaceC2828s
    /* renamed from: a */
    public /* synthetic */ InterfaceC2828s mo188a(InterfaceC2828s interfaceC2828s) {
        return m186c(this.f1324a.andThen(C3222n0.m184a(interfaceC2828s)));
    }

    @Override // p033j$.util.function.InterfaceC2828s
    public /* synthetic */ long applyAsLong(long j) {
        return this.f1324a.applyAsLong(j);
    }

    @Override // p033j$.util.function.InterfaceC2828s
    /* renamed from: b */
    public /* synthetic */ InterfaceC2828s mo187b(InterfaceC2828s interfaceC2828s) {
        return m186c(this.f1324a.compose(C3222n0.m184a(interfaceC2828s)));
    }
}
