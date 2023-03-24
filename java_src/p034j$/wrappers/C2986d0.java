package p034j$.wrappers;

import java.util.function.LongBinaryOperator;
import p034j$.util.function.InterfaceC2601o;
/* renamed from: j$.wrappers.d0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2986d0 implements LongBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2601o f1173a;

    private /* synthetic */ C2986d0(InterfaceC2601o interfaceC2601o) {
        this.f1173a = interfaceC2601o;
    }

    /* renamed from: a */
    public static /* synthetic */ LongBinaryOperator m158a(InterfaceC2601o interfaceC2601o) {
        if (interfaceC2601o == null) {
            return null;
        }
        return interfaceC2601o instanceof C2984c0 ? ((C2984c0) interfaceC2601o).f1171a : new C2986d0(interfaceC2601o);
    }

    @Override // java.util.function.LongBinaryOperator
    public /* synthetic */ long applyAsLong(long j, long j2) {
        return this.f1173a.applyAsLong(j, j2);
    }
}
