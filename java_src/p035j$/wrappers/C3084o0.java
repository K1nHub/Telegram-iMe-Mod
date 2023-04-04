package p035j$.wrappers;

import java.util.function.LongUnaryOperator;
import p035j$.util.function.InterfaceC2682t;
/* renamed from: j$.wrappers.o0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3084o0 implements InterfaceC2682t {

    /* renamed from: a */
    final /* synthetic */ LongUnaryOperator f1200a;

    private /* synthetic */ C3084o0(LongUnaryOperator longUnaryOperator) {
        this.f1200a = longUnaryOperator;
    }

    /* renamed from: c */
    public static /* synthetic */ InterfaceC2682t m119c(LongUnaryOperator longUnaryOperator) {
        if (longUnaryOperator == null) {
            return null;
        }
        return longUnaryOperator instanceof C3086p0 ? ((C3086p0) longUnaryOperator).f1202a : new C3084o0(longUnaryOperator);
    }

    @Override // p035j$.util.function.InterfaceC2682t
    /* renamed from: a */
    public /* synthetic */ InterfaceC2682t mo121a(InterfaceC2682t interfaceC2682t) {
        return m119c(this.f1200a.andThen(C3086p0.m117a(interfaceC2682t)));
    }

    @Override // p035j$.util.function.InterfaceC2682t
    public /* synthetic */ long applyAsLong(long j) {
        return this.f1200a.applyAsLong(j);
    }

    @Override // p035j$.util.function.InterfaceC2682t
    /* renamed from: b */
    public /* synthetic */ InterfaceC2682t mo120b(InterfaceC2682t interfaceC2682t) {
        return m119c(this.f1200a.compose(C3086p0.m117a(interfaceC2682t)));
    }
}
