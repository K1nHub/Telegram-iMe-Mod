package p033j$.wrappers;

import java.util.function.LongUnaryOperator;
import p033j$.util.function.InterfaceC2828s;
/* renamed from: j$.wrappers.n0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3222n0 implements LongUnaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2828s f1326a;

    private /* synthetic */ C3222n0(InterfaceC2828s interfaceC2828s) {
        this.f1326a = interfaceC2828s;
    }

    /* renamed from: a */
    public static /* synthetic */ LongUnaryOperator m184a(InterfaceC2828s interfaceC2828s) {
        if (interfaceC2828s == null) {
            return null;
        }
        return interfaceC2828s instanceof C3220m0 ? ((C3220m0) interfaceC2828s).f1324a : new C3222n0(interfaceC2828s);
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ LongUnaryOperator andThen(LongUnaryOperator longUnaryOperator) {
        return m184a(this.f1326a.mo188a(C3220m0.m186c(longUnaryOperator)));
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ long applyAsLong(long j) {
        return this.f1326a.applyAsLong(j);
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ LongUnaryOperator compose(LongUnaryOperator longUnaryOperator) {
        return m184a(this.f1326a.mo187b(C3220m0.m186c(longUnaryOperator)));
    }
}
