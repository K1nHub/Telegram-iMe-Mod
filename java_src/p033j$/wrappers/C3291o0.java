package p033j$.wrappers;

import java.util.function.LongUnaryOperator;
import p033j$.util.function.InterfaceC2889t;
/* renamed from: j$.wrappers.o0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3291o0 implements InterfaceC2889t {

    /* renamed from: a */
    final /* synthetic */ LongUnaryOperator f1284a;

    private /* synthetic */ C3291o0(LongUnaryOperator longUnaryOperator) {
        this.f1284a = longUnaryOperator;
    }

    /* renamed from: c */
    public static /* synthetic */ InterfaceC2889t m128c(LongUnaryOperator longUnaryOperator) {
        if (longUnaryOperator == null) {
            return null;
        }
        return longUnaryOperator instanceof C3293p0 ? ((C3293p0) longUnaryOperator).f1286a : new C3291o0(longUnaryOperator);
    }

    @Override // p033j$.util.function.InterfaceC2889t
    /* renamed from: a */
    public /* synthetic */ InterfaceC2889t mo130a(InterfaceC2889t interfaceC2889t) {
        return m128c(this.f1284a.andThen(C3293p0.m126a(interfaceC2889t)));
    }

    @Override // p033j$.util.function.InterfaceC2889t
    public /* synthetic */ long applyAsLong(long j) {
        return this.f1284a.applyAsLong(j);
    }

    @Override // p033j$.util.function.InterfaceC2889t
    /* renamed from: b */
    public /* synthetic */ InterfaceC2889t mo129b(InterfaceC2889t interfaceC2889t) {
        return m128c(this.f1284a.compose(C3293p0.m126a(interfaceC2889t)));
    }
}
