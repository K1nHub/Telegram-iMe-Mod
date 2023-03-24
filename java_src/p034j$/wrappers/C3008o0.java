package p034j$.wrappers;

import java.util.function.LongUnaryOperator;
import p034j$.util.function.InterfaceC2606t;
/* renamed from: j$.wrappers.o0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3008o0 implements InterfaceC2606t {

    /* renamed from: a */
    final /* synthetic */ LongUnaryOperator f1195a;

    private /* synthetic */ C3008o0(LongUnaryOperator longUnaryOperator) {
        this.f1195a = longUnaryOperator;
    }

    /* renamed from: c */
    public static /* synthetic */ InterfaceC2606t m124c(LongUnaryOperator longUnaryOperator) {
        if (longUnaryOperator == null) {
            return null;
        }
        return longUnaryOperator instanceof C3010p0 ? ((C3010p0) longUnaryOperator).f1197a : new C3008o0(longUnaryOperator);
    }

    @Override // p034j$.util.function.InterfaceC2606t
    /* renamed from: a */
    public /* synthetic */ InterfaceC2606t mo126a(InterfaceC2606t interfaceC2606t) {
        return m124c(this.f1195a.andThen(C3010p0.m122a(interfaceC2606t)));
    }

    @Override // p034j$.util.function.InterfaceC2606t
    public /* synthetic */ long applyAsLong(long j) {
        return this.f1195a.applyAsLong(j);
    }

    @Override // p034j$.util.function.InterfaceC2606t
    /* renamed from: b */
    public /* synthetic */ InterfaceC2606t mo125b(InterfaceC2606t interfaceC2606t) {
        return m124c(this.f1195a.compose(C3010p0.m122a(interfaceC2606t)));
    }
}
