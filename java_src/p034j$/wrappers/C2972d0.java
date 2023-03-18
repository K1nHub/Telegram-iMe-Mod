package p034j$.wrappers;

import java.util.function.LongBinaryOperator;
import p034j$.util.function.InterfaceC2587o;
/* renamed from: j$.wrappers.d0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2972d0 implements LongBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2587o f1172a;

    private /* synthetic */ C2972d0(InterfaceC2587o interfaceC2587o) {
        this.f1172a = interfaceC2587o;
    }

    /* renamed from: a */
    public static /* synthetic */ LongBinaryOperator m159a(InterfaceC2587o interfaceC2587o) {
        if (interfaceC2587o == null) {
            return null;
        }
        return interfaceC2587o instanceof C2970c0 ? ((C2970c0) interfaceC2587o).f1170a : new C2972d0(interfaceC2587o);
    }

    @Override // java.util.function.LongBinaryOperator
    public /* synthetic */ long applyAsLong(long j, long j2) {
        return this.f1172a.applyAsLong(j, j2);
    }
}
