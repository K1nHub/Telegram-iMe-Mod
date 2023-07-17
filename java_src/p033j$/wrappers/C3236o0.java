package p033j$.wrappers;

import java.util.function.LongUnaryOperator;
import p033j$.util.function.InterfaceC2834t;
/* renamed from: j$.wrappers.o0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3236o0 implements InterfaceC2834t {

    /* renamed from: a */
    final /* synthetic */ LongUnaryOperator f1280a;

    private /* synthetic */ C3236o0(LongUnaryOperator longUnaryOperator) {
        this.f1280a = longUnaryOperator;
    }

    /* renamed from: c */
    public static /* synthetic */ InterfaceC2834t m110c(LongUnaryOperator longUnaryOperator) {
        if (longUnaryOperator == null) {
            return null;
        }
        return longUnaryOperator instanceof C3238p0 ? ((C3238p0) longUnaryOperator).f1282a : new C3236o0(longUnaryOperator);
    }

    @Override // p033j$.util.function.InterfaceC2834t
    /* renamed from: a */
    public /* synthetic */ InterfaceC2834t mo112a(InterfaceC2834t interfaceC2834t) {
        return m110c(this.f1280a.andThen(C3238p0.m108a(interfaceC2834t)));
    }

    @Override // p033j$.util.function.InterfaceC2834t
    public /* synthetic */ long applyAsLong(long j) {
        return this.f1280a.applyAsLong(j);
    }

    @Override // p033j$.util.function.InterfaceC2834t
    /* renamed from: b */
    public /* synthetic */ InterfaceC2834t mo111b(InterfaceC2834t interfaceC2834t) {
        return m110c(this.f1280a.compose(C3238p0.m108a(interfaceC2834t)));
    }
}
