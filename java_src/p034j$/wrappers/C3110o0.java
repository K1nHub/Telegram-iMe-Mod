package p034j$.wrappers;

import java.util.function.LongUnaryOperator;
import p034j$.util.function.InterfaceC2708t;
/* renamed from: j$.wrappers.o0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3110o0 implements InterfaceC2708t {

    /* renamed from: a */
    final /* synthetic */ LongUnaryOperator f1198a;

    private /* synthetic */ C3110o0(LongUnaryOperator longUnaryOperator) {
        this.f1198a = longUnaryOperator;
    }

    /* renamed from: c */
    public static /* synthetic */ InterfaceC2708t m110c(LongUnaryOperator longUnaryOperator) {
        if (longUnaryOperator == null) {
            return null;
        }
        return longUnaryOperator instanceof C3112p0 ? ((C3112p0) longUnaryOperator).f1200a : new C3110o0(longUnaryOperator);
    }

    @Override // p034j$.util.function.InterfaceC2708t
    /* renamed from: a */
    public /* synthetic */ InterfaceC2708t mo112a(InterfaceC2708t interfaceC2708t) {
        return m110c(this.f1198a.andThen(C3112p0.m108a(interfaceC2708t)));
    }

    @Override // p034j$.util.function.InterfaceC2708t
    public /* synthetic */ long applyAsLong(long j) {
        return this.f1198a.applyAsLong(j);
    }

    @Override // p034j$.util.function.InterfaceC2708t
    /* renamed from: b */
    public /* synthetic */ InterfaceC2708t mo111b(InterfaceC2708t interfaceC2708t) {
        return m110c(this.f1198a.compose(C3112p0.m108a(interfaceC2708t)));
    }
}
