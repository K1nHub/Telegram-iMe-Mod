package p034j$.wrappers;

import java.util.function.LongUnaryOperator;
import p034j$.util.function.InterfaceC2592t;
/* renamed from: j$.wrappers.p0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2996p0 implements LongUnaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2592t f1196a;

    private /* synthetic */ C2996p0(InterfaceC2592t interfaceC2592t) {
        this.f1196a = interfaceC2592t;
    }

    /* renamed from: a */
    public static /* synthetic */ LongUnaryOperator m123a(InterfaceC2592t interfaceC2592t) {
        if (interfaceC2592t == null) {
            return null;
        }
        return interfaceC2592t instanceof C2994o0 ? ((C2994o0) interfaceC2592t).f1194a : new C2996p0(interfaceC2592t);
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ LongUnaryOperator andThen(LongUnaryOperator longUnaryOperator) {
        return m123a(this.f1196a.mo127a(C2994o0.m125c(longUnaryOperator)));
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ long applyAsLong(long j) {
        return this.f1196a.applyAsLong(j);
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ LongUnaryOperator compose(LongUnaryOperator longUnaryOperator) {
        return m123a(this.f1196a.mo126b(C2994o0.m125c(longUnaryOperator)));
    }
}
