package p034j$.wrappers;

import java.util.function.LongUnaryOperator;
import p034j$.util.function.InterfaceC2713t;
/* renamed from: j$.wrappers.p0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3117p0 implements LongUnaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2713t f1200a;

    private /* synthetic */ C3117p0(InterfaceC2713t interfaceC2713t) {
        this.f1200a = interfaceC2713t;
    }

    /* renamed from: a */
    public static /* synthetic */ LongUnaryOperator m108a(InterfaceC2713t interfaceC2713t) {
        if (interfaceC2713t == null) {
            return null;
        }
        return interfaceC2713t instanceof C3115o0 ? ((C3115o0) interfaceC2713t).f1198a : new C3117p0(interfaceC2713t);
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ LongUnaryOperator andThen(LongUnaryOperator longUnaryOperator) {
        return m108a(this.f1200a.mo112a(C3115o0.m110c(longUnaryOperator)));
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ long applyAsLong(long j) {
        return this.f1200a.applyAsLong(j);
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ LongUnaryOperator compose(LongUnaryOperator longUnaryOperator) {
        return m108a(this.f1200a.mo111b(C3115o0.m110c(longUnaryOperator)));
    }
}
