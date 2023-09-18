package p033j$.wrappers;

import java.util.function.LongUnaryOperator;
import p033j$.util.function.InterfaceC2889t;
/* renamed from: j$.wrappers.p0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3293p0 implements LongUnaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2889t f1286a;

    private /* synthetic */ C3293p0(InterfaceC2889t interfaceC2889t) {
        this.f1286a = interfaceC2889t;
    }

    /* renamed from: a */
    public static /* synthetic */ LongUnaryOperator m126a(InterfaceC2889t interfaceC2889t) {
        if (interfaceC2889t == null) {
            return null;
        }
        return interfaceC2889t instanceof C3291o0 ? ((C3291o0) interfaceC2889t).f1284a : new C3293p0(interfaceC2889t);
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ LongUnaryOperator andThen(LongUnaryOperator longUnaryOperator) {
        return m126a(this.f1286a.mo130a(C3291o0.m128c(longUnaryOperator)));
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ long applyAsLong(long j) {
        return this.f1286a.applyAsLong(j);
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ LongUnaryOperator compose(LongUnaryOperator longUnaryOperator) {
        return m126a(this.f1286a.mo129b(C3291o0.m128c(longUnaryOperator)));
    }
}
