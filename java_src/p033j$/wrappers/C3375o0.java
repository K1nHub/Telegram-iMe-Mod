package p033j$.wrappers;

import java.util.function.LongUnaryOperator;
import p033j$.util.function.InterfaceC2973t;
/* renamed from: j$.wrappers.o0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3375o0 implements InterfaceC2973t {

    /* renamed from: a */
    final /* synthetic */ LongUnaryOperator f1293a;

    private /* synthetic */ C3375o0(LongUnaryOperator longUnaryOperator) {
        this.f1293a = longUnaryOperator;
    }

    /* renamed from: c */
    public static /* synthetic */ InterfaceC2973t m128c(LongUnaryOperator longUnaryOperator) {
        if (longUnaryOperator == null) {
            return null;
        }
        return longUnaryOperator instanceof C3377p0 ? ((C3377p0) longUnaryOperator).f1295a : new C3375o0(longUnaryOperator);
    }

    @Override // p033j$.util.function.InterfaceC2973t
    /* renamed from: a */
    public /* synthetic */ InterfaceC2973t mo130a(InterfaceC2973t interfaceC2973t) {
        return m128c(this.f1293a.andThen(C3377p0.m126a(interfaceC2973t)));
    }

    @Override // p033j$.util.function.InterfaceC2973t
    public /* synthetic */ long applyAsLong(long j) {
        return this.f1293a.applyAsLong(j);
    }

    @Override // p033j$.util.function.InterfaceC2973t
    /* renamed from: b */
    public /* synthetic */ InterfaceC2973t mo129b(InterfaceC2973t interfaceC2973t) {
        return m128c(this.f1293a.compose(C3377p0.m126a(interfaceC2973t)));
    }
}
