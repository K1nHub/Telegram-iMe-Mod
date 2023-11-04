package p033j$.wrappers;

import java.util.function.LongUnaryOperator;
import p033j$.util.function.InterfaceC2833s;
/* renamed from: j$.wrappers.n0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3227n0 implements LongUnaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2833s f1326a;

    private /* synthetic */ C3227n0(InterfaceC2833s interfaceC2833s) {
        this.f1326a = interfaceC2833s;
    }

    /* renamed from: a */
    public static /* synthetic */ LongUnaryOperator m181a(InterfaceC2833s interfaceC2833s) {
        if (interfaceC2833s == null) {
            return null;
        }
        return interfaceC2833s instanceof C3225m0 ? ((C3225m0) interfaceC2833s).f1324a : new C3227n0(interfaceC2833s);
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ LongUnaryOperator andThen(LongUnaryOperator longUnaryOperator) {
        return m181a(this.f1326a.mo185a(C3225m0.m183c(longUnaryOperator)));
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ long applyAsLong(long j) {
        return this.f1326a.applyAsLong(j);
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ LongUnaryOperator compose(LongUnaryOperator longUnaryOperator) {
        return m181a(this.f1326a.mo184b(C3225m0.m183c(longUnaryOperator)));
    }
}
