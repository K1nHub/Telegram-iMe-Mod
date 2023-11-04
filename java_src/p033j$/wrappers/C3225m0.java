package p033j$.wrappers;

import java.util.function.LongUnaryOperator;
import p033j$.util.function.InterfaceC2833s;
/* renamed from: j$.wrappers.m0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3225m0 implements InterfaceC2833s {

    /* renamed from: a */
    final /* synthetic */ LongUnaryOperator f1324a;

    private /* synthetic */ C3225m0(LongUnaryOperator longUnaryOperator) {
        this.f1324a = longUnaryOperator;
    }

    /* renamed from: c */
    public static /* synthetic */ InterfaceC2833s m183c(LongUnaryOperator longUnaryOperator) {
        if (longUnaryOperator == null) {
            return null;
        }
        return longUnaryOperator instanceof C3227n0 ? ((C3227n0) longUnaryOperator).f1326a : new C3225m0(longUnaryOperator);
    }

    @Override // p033j$.util.function.InterfaceC2833s
    /* renamed from: a */
    public /* synthetic */ InterfaceC2833s mo185a(InterfaceC2833s interfaceC2833s) {
        return m183c(this.f1324a.andThen(C3227n0.m181a(interfaceC2833s)));
    }

    @Override // p033j$.util.function.InterfaceC2833s
    public /* synthetic */ long applyAsLong(long j) {
        return this.f1324a.applyAsLong(j);
    }

    @Override // p033j$.util.function.InterfaceC2833s
    /* renamed from: b */
    public /* synthetic */ InterfaceC2833s mo184b(InterfaceC2833s interfaceC2833s) {
        return m183c(this.f1324a.compose(C3227n0.m181a(interfaceC2833s)));
    }
}
