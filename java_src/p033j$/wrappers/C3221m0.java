package p033j$.wrappers;

import java.util.function.LongUnaryOperator;
import p033j$.util.function.InterfaceC2829s;
/* renamed from: j$.wrappers.m0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3221m0 implements InterfaceC2829s {

    /* renamed from: a */
    final /* synthetic */ LongUnaryOperator f1324a;

    private /* synthetic */ C3221m0(LongUnaryOperator longUnaryOperator) {
        this.f1324a = longUnaryOperator;
    }

    /* renamed from: c */
    public static /* synthetic */ InterfaceC2829s m182c(LongUnaryOperator longUnaryOperator) {
        if (longUnaryOperator == null) {
            return null;
        }
        return longUnaryOperator instanceof C3223n0 ? ((C3223n0) longUnaryOperator).f1326a : new C3221m0(longUnaryOperator);
    }

    @Override // p033j$.util.function.InterfaceC2829s
    /* renamed from: a */
    public /* synthetic */ InterfaceC2829s mo184a(InterfaceC2829s interfaceC2829s) {
        return m182c(this.f1324a.andThen(C3223n0.m180a(interfaceC2829s)));
    }

    @Override // p033j$.util.function.InterfaceC2829s
    public /* synthetic */ long applyAsLong(long j) {
        return this.f1324a.applyAsLong(j);
    }

    @Override // p033j$.util.function.InterfaceC2829s
    /* renamed from: b */
    public /* synthetic */ InterfaceC2829s mo183b(InterfaceC2829s interfaceC2829s) {
        return m182c(this.f1324a.compose(C3223n0.m180a(interfaceC2829s)));
    }
}
