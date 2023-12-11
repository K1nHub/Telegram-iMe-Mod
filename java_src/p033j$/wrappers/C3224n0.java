package p033j$.wrappers;

import java.util.function.LongUnaryOperator;
import p033j$.util.function.InterfaceC2830s;
/* renamed from: j$.wrappers.n0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3224n0 implements LongUnaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2830s f1326a;

    private /* synthetic */ C3224n0(InterfaceC2830s interfaceC2830s) {
        this.f1326a = interfaceC2830s;
    }

    /* renamed from: a */
    public static /* synthetic */ LongUnaryOperator m181a(InterfaceC2830s interfaceC2830s) {
        if (interfaceC2830s == null) {
            return null;
        }
        return interfaceC2830s instanceof C3222m0 ? ((C3222m0) interfaceC2830s).f1324a : new C3224n0(interfaceC2830s);
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ LongUnaryOperator andThen(LongUnaryOperator longUnaryOperator) {
        return m181a(this.f1326a.mo185a(C3222m0.m183c(longUnaryOperator)));
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ long applyAsLong(long j) {
        return this.f1326a.applyAsLong(j);
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ LongUnaryOperator compose(LongUnaryOperator longUnaryOperator) {
        return m181a(this.f1326a.mo184b(C3222m0.m183c(longUnaryOperator)));
    }
}
