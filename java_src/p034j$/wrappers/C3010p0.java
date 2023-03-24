package p034j$.wrappers;

import java.util.function.LongUnaryOperator;
import p034j$.util.function.InterfaceC2606t;
/* renamed from: j$.wrappers.p0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3010p0 implements LongUnaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2606t f1197a;

    private /* synthetic */ C3010p0(InterfaceC2606t interfaceC2606t) {
        this.f1197a = interfaceC2606t;
    }

    /* renamed from: a */
    public static /* synthetic */ LongUnaryOperator m122a(InterfaceC2606t interfaceC2606t) {
        if (interfaceC2606t == null) {
            return null;
        }
        return interfaceC2606t instanceof C3008o0 ? ((C3008o0) interfaceC2606t).f1195a : new C3010p0(interfaceC2606t);
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ LongUnaryOperator andThen(LongUnaryOperator longUnaryOperator) {
        return m122a(this.f1197a.mo126a(C3008o0.m124c(longUnaryOperator)));
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ long applyAsLong(long j) {
        return this.f1197a.applyAsLong(j);
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ LongUnaryOperator compose(LongUnaryOperator longUnaryOperator) {
        return m122a(this.f1197a.mo125b(C3008o0.m124c(longUnaryOperator)));
    }
}
