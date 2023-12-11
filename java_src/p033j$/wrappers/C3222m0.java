package p033j$.wrappers;

import java.util.function.LongUnaryOperator;
import p033j$.util.function.InterfaceC2830s;
/* renamed from: j$.wrappers.m0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3222m0 implements InterfaceC2830s {

    /* renamed from: a */
    final /* synthetic */ LongUnaryOperator f1324a;

    private /* synthetic */ C3222m0(LongUnaryOperator longUnaryOperator) {
        this.f1324a = longUnaryOperator;
    }

    /* renamed from: c */
    public static /* synthetic */ InterfaceC2830s m183c(LongUnaryOperator longUnaryOperator) {
        if (longUnaryOperator == null) {
            return null;
        }
        return longUnaryOperator instanceof C3224n0 ? ((C3224n0) longUnaryOperator).f1326a : new C3222m0(longUnaryOperator);
    }

    @Override // p033j$.util.function.InterfaceC2830s
    /* renamed from: a */
    public /* synthetic */ InterfaceC2830s mo185a(InterfaceC2830s interfaceC2830s) {
        return m183c(this.f1324a.andThen(C3224n0.m181a(interfaceC2830s)));
    }

    @Override // p033j$.util.function.InterfaceC2830s
    public /* synthetic */ long applyAsLong(long j) {
        return this.f1324a.applyAsLong(j);
    }

    @Override // p033j$.util.function.InterfaceC2830s
    /* renamed from: b */
    public /* synthetic */ InterfaceC2830s mo184b(InterfaceC2830s interfaceC2830s) {
        return m183c(this.f1324a.compose(C3224n0.m181a(interfaceC2830s)));
    }
}
