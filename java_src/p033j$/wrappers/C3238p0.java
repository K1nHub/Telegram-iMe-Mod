package p033j$.wrappers;

import java.util.function.LongUnaryOperator;
import p033j$.util.function.InterfaceC2834t;
/* renamed from: j$.wrappers.p0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3238p0 implements LongUnaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2834t f1282a;

    private /* synthetic */ C3238p0(InterfaceC2834t interfaceC2834t) {
        this.f1282a = interfaceC2834t;
    }

    /* renamed from: a */
    public static /* synthetic */ LongUnaryOperator m108a(InterfaceC2834t interfaceC2834t) {
        if (interfaceC2834t == null) {
            return null;
        }
        return interfaceC2834t instanceof C3236o0 ? ((C3236o0) interfaceC2834t).f1280a : new C3238p0(interfaceC2834t);
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ LongUnaryOperator andThen(LongUnaryOperator longUnaryOperator) {
        return m108a(this.f1282a.mo112a(C3236o0.m110c(longUnaryOperator)));
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ long applyAsLong(long j) {
        return this.f1282a.applyAsLong(j);
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ LongUnaryOperator compose(LongUnaryOperator longUnaryOperator) {
        return m108a(this.f1282a.mo111b(C3236o0.m110c(longUnaryOperator)));
    }
}
