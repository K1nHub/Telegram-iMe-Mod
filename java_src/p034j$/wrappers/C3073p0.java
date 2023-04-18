package p034j$.wrappers;

import java.util.function.LongUnaryOperator;
import p034j$.util.function.InterfaceC2669t;
/* renamed from: j$.wrappers.p0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3073p0 implements LongUnaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2669t f1197a;

    private /* synthetic */ C3073p0(InterfaceC2669t interfaceC2669t) {
        this.f1197a = interfaceC2669t;
    }

    /* renamed from: a */
    public static /* synthetic */ LongUnaryOperator m103a(InterfaceC2669t interfaceC2669t) {
        if (interfaceC2669t == null) {
            return null;
        }
        return interfaceC2669t instanceof C3071o0 ? ((C3071o0) interfaceC2669t).f1195a : new C3073p0(interfaceC2669t);
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ LongUnaryOperator andThen(LongUnaryOperator longUnaryOperator) {
        return m103a(this.f1197a.mo107a(C3071o0.m105c(longUnaryOperator)));
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ long applyAsLong(long j) {
        return this.f1197a.applyAsLong(j);
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ LongUnaryOperator compose(LongUnaryOperator longUnaryOperator) {
        return m103a(this.f1197a.mo106b(C3071o0.m105c(longUnaryOperator)));
    }
}
