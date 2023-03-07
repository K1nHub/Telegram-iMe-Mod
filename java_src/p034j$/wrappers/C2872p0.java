package p034j$.wrappers;

import java.util.function.LongUnaryOperator;
import p034j$.util.function.InterfaceC2468t;
/* renamed from: j$.wrappers.p0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2872p0 implements LongUnaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2468t f1191a;

    private /* synthetic */ C2872p0(InterfaceC2468t interfaceC2468t) {
        this.f1191a = interfaceC2468t;
    }

    /* renamed from: a */
    public static /* synthetic */ LongUnaryOperator m123a(InterfaceC2468t interfaceC2468t) {
        if (interfaceC2468t == null) {
            return null;
        }
        return interfaceC2468t instanceof C2870o0 ? ((C2870o0) interfaceC2468t).f1189a : new C2872p0(interfaceC2468t);
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ LongUnaryOperator andThen(LongUnaryOperator longUnaryOperator) {
        return m123a(this.f1191a.mo127a(C2870o0.m125c(longUnaryOperator)));
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ long applyAsLong(long j) {
        return this.f1191a.applyAsLong(j);
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ LongUnaryOperator compose(LongUnaryOperator longUnaryOperator) {
        return m123a(this.f1191a.mo126b(C2870o0.m125c(longUnaryOperator)));
    }
}
