package p034j$.wrappers;

import java.util.function.LongUnaryOperator;
import p034j$.util.function.InterfaceC2468t;
/* renamed from: j$.wrappers.o0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2870o0 implements InterfaceC2468t {

    /* renamed from: a */
    final /* synthetic */ LongUnaryOperator f1189a;

    private /* synthetic */ C2870o0(LongUnaryOperator longUnaryOperator) {
        this.f1189a = longUnaryOperator;
    }

    /* renamed from: c */
    public static /* synthetic */ InterfaceC2468t m125c(LongUnaryOperator longUnaryOperator) {
        if (longUnaryOperator == null) {
            return null;
        }
        return longUnaryOperator instanceof C2872p0 ? ((C2872p0) longUnaryOperator).f1191a : new C2870o0(longUnaryOperator);
    }

    @Override // p034j$.util.function.InterfaceC2468t
    /* renamed from: a */
    public /* synthetic */ InterfaceC2468t mo127a(InterfaceC2468t interfaceC2468t) {
        return m125c(this.f1189a.andThen(C2872p0.m123a(interfaceC2468t)));
    }

    @Override // p034j$.util.function.InterfaceC2468t
    public /* synthetic */ long applyAsLong(long j) {
        return this.f1189a.applyAsLong(j);
    }

    @Override // p034j$.util.function.InterfaceC2468t
    /* renamed from: b */
    public /* synthetic */ InterfaceC2468t mo126b(InterfaceC2468t interfaceC2468t) {
        return m125c(this.f1189a.compose(C2872p0.m123a(interfaceC2468t)));
    }
}
