package p035j$.wrappers;

import java.util.function.LongUnaryOperator;
import p035j$.util.function.InterfaceC2682t;
/* renamed from: j$.wrappers.p0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3086p0 implements LongUnaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2682t f1202a;

    private /* synthetic */ C3086p0(InterfaceC2682t interfaceC2682t) {
        this.f1202a = interfaceC2682t;
    }

    /* renamed from: a */
    public static /* synthetic */ LongUnaryOperator m117a(InterfaceC2682t interfaceC2682t) {
        if (interfaceC2682t == null) {
            return null;
        }
        return interfaceC2682t instanceof C3084o0 ? ((C3084o0) interfaceC2682t).f1200a : new C3086p0(interfaceC2682t);
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ LongUnaryOperator andThen(LongUnaryOperator longUnaryOperator) {
        return m117a(this.f1202a.mo121a(C3084o0.m119c(longUnaryOperator)));
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ long applyAsLong(long j) {
        return this.f1202a.applyAsLong(j);
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ LongUnaryOperator compose(LongUnaryOperator longUnaryOperator) {
        return m117a(this.f1202a.mo120b(C3084o0.m119c(longUnaryOperator)));
    }
}
