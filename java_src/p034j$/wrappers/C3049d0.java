package p034j$.wrappers;

import java.util.function.LongBinaryOperator;
import p034j$.util.function.InterfaceC2664o;
/* renamed from: j$.wrappers.d0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3049d0 implements LongBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2664o f1173a;

    private /* synthetic */ C3049d0(InterfaceC2664o interfaceC2664o) {
        this.f1173a = interfaceC2664o;
    }

    /* renamed from: a */
    public static /* synthetic */ LongBinaryOperator m139a(InterfaceC2664o interfaceC2664o) {
        if (interfaceC2664o == null) {
            return null;
        }
        return interfaceC2664o instanceof C3047c0 ? ((C3047c0) interfaceC2664o).f1171a : new C3049d0(interfaceC2664o);
    }

    @Override // java.util.function.LongBinaryOperator
    public /* synthetic */ long applyAsLong(long j, long j2) {
        return this.f1173a.applyAsLong(j, j2);
    }
}
