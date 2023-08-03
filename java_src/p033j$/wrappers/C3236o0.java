package p033j$.wrappers;

import java.util.function.LongUnaryOperator;
import p033j$.util.function.InterfaceC2834t;
/* renamed from: j$.wrappers.o0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3236o0 implements InterfaceC2834t {

    /* renamed from: a */
    final /* synthetic */ LongUnaryOperator f1283a;

    private /* synthetic */ C3236o0(LongUnaryOperator longUnaryOperator) {
        this.f1283a = longUnaryOperator;
    }

    /* renamed from: c */
    public static /* synthetic */ InterfaceC2834t m128c(LongUnaryOperator longUnaryOperator) {
        if (longUnaryOperator == null) {
            return null;
        }
        return longUnaryOperator instanceof C3238p0 ? ((C3238p0) longUnaryOperator).f1285a : new C3236o0(longUnaryOperator);
    }

    @Override // p033j$.util.function.InterfaceC2834t
    /* renamed from: a */
    public /* synthetic */ InterfaceC2834t mo130a(InterfaceC2834t interfaceC2834t) {
        return m128c(this.f1283a.andThen(C3238p0.m126a(interfaceC2834t)));
    }

    @Override // p033j$.util.function.InterfaceC2834t
    public /* synthetic */ long applyAsLong(long j) {
        return this.f1283a.applyAsLong(j);
    }

    @Override // p033j$.util.function.InterfaceC2834t
    /* renamed from: b */
    public /* synthetic */ InterfaceC2834t mo129b(InterfaceC2834t interfaceC2834t) {
        return m128c(this.f1283a.compose(C3238p0.m126a(interfaceC2834t)));
    }
}
