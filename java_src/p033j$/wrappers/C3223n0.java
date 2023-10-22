package p033j$.wrappers;

import java.util.function.LongUnaryOperator;
import p033j$.util.function.InterfaceC2829s;
/* renamed from: j$.wrappers.n0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3223n0 implements LongUnaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2829s f1326a;

    private /* synthetic */ C3223n0(InterfaceC2829s interfaceC2829s) {
        this.f1326a = interfaceC2829s;
    }

    /* renamed from: a */
    public static /* synthetic */ LongUnaryOperator m180a(InterfaceC2829s interfaceC2829s) {
        if (interfaceC2829s == null) {
            return null;
        }
        return interfaceC2829s instanceof C3221m0 ? ((C3221m0) interfaceC2829s).f1324a : new C3223n0(interfaceC2829s);
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ LongUnaryOperator andThen(LongUnaryOperator longUnaryOperator) {
        return m180a(this.f1326a.mo184a(C3221m0.m182c(longUnaryOperator)));
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ long applyAsLong(long j) {
        return this.f1326a.applyAsLong(j);
    }

    @Override // java.util.function.LongUnaryOperator
    public /* synthetic */ LongUnaryOperator compose(LongUnaryOperator longUnaryOperator) {
        return m180a(this.f1326a.mo183b(C3221m0.m182c(longUnaryOperator)));
    }
}
