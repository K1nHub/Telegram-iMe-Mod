package p034j$.wrappers;

import java.util.function.LongUnaryOperator;
import p034j$.util.function.InterfaceC2708t;
/* renamed from: j$.wrappers.p0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3112p0 implements LongUnaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2708t f1200a;

    private /* synthetic */ C3112p0(InterfaceC2708t interfaceC2708t) {
        this.f1200a = interfaceC2708t;
    }

    /* renamed from: a */
    public static /* synthetic */ LongUnaryOperator m108a(InterfaceC2708t interfaceC2708t) {
        if (interfaceC2708t == null) {
            return null;
        }
        return interfaceC2708t instanceof C3110o0 ? ((C3110o0) interfaceC2708t).f1198a : new C3112p0(interfaceC2708t);
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ LongUnaryOperator andThen(LongUnaryOperator longUnaryOperator) {
        return m108a(this.f1200a.mo112a(C3110o0.m110c(longUnaryOperator)));
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ long applyAsLong(long j) {
        return this.f1200a.applyAsLong(j);
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ LongUnaryOperator compose(LongUnaryOperator longUnaryOperator) {
        return m108a(this.f1200a.mo111b(C3110o0.m110c(longUnaryOperator)));
    }
}
