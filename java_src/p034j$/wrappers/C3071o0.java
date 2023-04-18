package p034j$.wrappers;

import java.util.function.LongUnaryOperator;
import p034j$.util.function.InterfaceC2669t;
/* renamed from: j$.wrappers.o0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3071o0 implements InterfaceC2669t {

    /* renamed from: a */
    final /* synthetic */ LongUnaryOperator f1195a;

    private /* synthetic */ C3071o0(LongUnaryOperator longUnaryOperator) {
        this.f1195a = longUnaryOperator;
    }

    /* renamed from: c */
    public static /* synthetic */ InterfaceC2669t m105c(LongUnaryOperator longUnaryOperator) {
        if (longUnaryOperator == null) {
            return null;
        }
        return longUnaryOperator instanceof C3073p0 ? ((C3073p0) longUnaryOperator).f1197a : new C3071o0(longUnaryOperator);
    }

    @Override // p034j$.util.function.InterfaceC2669t
    /* renamed from: a */
    public /* synthetic */ InterfaceC2669t mo107a(InterfaceC2669t interfaceC2669t) {
        return m105c(this.f1195a.andThen(C3073p0.m103a(interfaceC2669t)));
    }

    @Override // p034j$.util.function.InterfaceC2669t
    public /* synthetic */ long applyAsLong(long j) {
        return this.f1195a.applyAsLong(j);
    }

    @Override // p034j$.util.function.InterfaceC2669t
    /* renamed from: b */
    public /* synthetic */ InterfaceC2669t mo106b(InterfaceC2669t interfaceC2669t) {
        return m105c(this.f1195a.compose(C3073p0.m103a(interfaceC2669t)));
    }
}
