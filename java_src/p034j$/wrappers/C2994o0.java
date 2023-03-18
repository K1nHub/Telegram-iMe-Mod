package p034j$.wrappers;

import java.util.function.LongUnaryOperator;
import p034j$.util.function.InterfaceC2592t;
/* renamed from: j$.wrappers.o0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2994o0 implements InterfaceC2592t {

    /* renamed from: a */
    final /* synthetic */ LongUnaryOperator f1194a;

    private /* synthetic */ C2994o0(LongUnaryOperator longUnaryOperator) {
        this.f1194a = longUnaryOperator;
    }

    /* renamed from: c */
    public static /* synthetic */ InterfaceC2592t m125c(LongUnaryOperator longUnaryOperator) {
        if (longUnaryOperator == null) {
            return null;
        }
        return longUnaryOperator instanceof C2996p0 ? ((C2996p0) longUnaryOperator).f1196a : new C2994o0(longUnaryOperator);
    }

    @Override // p034j$.util.function.InterfaceC2592t
    /* renamed from: a */
    public /* synthetic */ InterfaceC2592t mo127a(InterfaceC2592t interfaceC2592t) {
        return m125c(this.f1194a.andThen(C2996p0.m123a(interfaceC2592t)));
    }

    @Override // p034j$.util.function.InterfaceC2592t
    public /* synthetic */ long applyAsLong(long j) {
        return this.f1194a.applyAsLong(j);
    }

    @Override // p034j$.util.function.InterfaceC2592t
    /* renamed from: b */
    public /* synthetic */ InterfaceC2592t mo126b(InterfaceC2592t interfaceC2592t) {
        return m125c(this.f1194a.compose(C2996p0.m123a(interfaceC2592t)));
    }
}
