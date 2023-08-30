package p033j$.wrappers;

import java.util.function.LongUnaryOperator;
import p033j$.util.function.InterfaceC2973t;
/* renamed from: j$.wrappers.p0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3377p0 implements LongUnaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2973t f1295a;

    private /* synthetic */ C3377p0(InterfaceC2973t interfaceC2973t) {
        this.f1295a = interfaceC2973t;
    }

    /* renamed from: a */
    public static /* synthetic */ LongUnaryOperator m126a(InterfaceC2973t interfaceC2973t) {
        if (interfaceC2973t == null) {
            return null;
        }
        return interfaceC2973t instanceof C3375o0 ? ((C3375o0) interfaceC2973t).f1293a : new C3377p0(interfaceC2973t);
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ LongUnaryOperator andThen(LongUnaryOperator longUnaryOperator) {
        return m126a(this.f1295a.mo130a(C3375o0.m128c(longUnaryOperator)));
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ long applyAsLong(long j) {
        return this.f1295a.applyAsLong(j);
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ LongUnaryOperator compose(LongUnaryOperator longUnaryOperator) {
        return m126a(this.f1295a.mo129b(C3375o0.m128c(longUnaryOperator)));
    }
}
