package p035j$.wrappers;

import java.util.function.LongBinaryOperator;
import p035j$.util.function.InterfaceC2677o;
/* renamed from: j$.wrappers.d0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3062d0 implements LongBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2677o f1178a;

    private /* synthetic */ C3062d0(InterfaceC2677o interfaceC2677o) {
        this.f1178a = interfaceC2677o;
    }

    /* renamed from: a */
    public static /* synthetic */ LongBinaryOperator m153a(InterfaceC2677o interfaceC2677o) {
        if (interfaceC2677o == null) {
            return null;
        }
        return interfaceC2677o instanceof C3060c0 ? ((C3060c0) interfaceC2677o).f1176a : new C3062d0(interfaceC2677o);
    }

    @Override // java.util.function.LongBinaryOperator
    public /* synthetic */ long applyAsLong(long j, long j2) {
        return this.f1178a.applyAsLong(j, j2);
    }
}
