package p034j$.wrappers;

import java.util.function.LongUnaryOperator;
import p034j$.util.function.InterfaceC2713t;
/* renamed from: j$.wrappers.o0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3115o0 implements InterfaceC2713t {

    /* renamed from: a */
    final /* synthetic */ LongUnaryOperator f1198a;

    private /* synthetic */ C3115o0(LongUnaryOperator longUnaryOperator) {
        this.f1198a = longUnaryOperator;
    }

    /* renamed from: c */
    public static /* synthetic */ InterfaceC2713t m110c(LongUnaryOperator longUnaryOperator) {
        if (longUnaryOperator == null) {
            return null;
        }
        return longUnaryOperator instanceof C3117p0 ? ((C3117p0) longUnaryOperator).f1200a : new C3115o0(longUnaryOperator);
    }

    @Override // p034j$.util.function.InterfaceC2713t
    /* renamed from: a */
    public /* synthetic */ InterfaceC2713t mo112a(InterfaceC2713t interfaceC2713t) {
        return m110c(this.f1198a.andThen(C3117p0.m108a(interfaceC2713t)));
    }

    @Override // p034j$.util.function.InterfaceC2713t
    public /* synthetic */ long applyAsLong(long j) {
        return this.f1198a.applyAsLong(j);
    }

    @Override // p034j$.util.function.InterfaceC2713t
    /* renamed from: b */
    public /* synthetic */ InterfaceC2713t mo111b(InterfaceC2713t interfaceC2713t) {
        return m110c(this.f1198a.compose(C3117p0.m108a(interfaceC2713t)));
    }
}
