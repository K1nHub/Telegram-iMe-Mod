package p034j$.wrappers;

import java.util.function.LongBinaryOperator;
import p034j$.util.function.InterfaceC2463o;
/* renamed from: j$.wrappers.d0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2848d0 implements LongBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2463o f1167a;

    private /* synthetic */ C2848d0(InterfaceC2463o interfaceC2463o) {
        this.f1167a = interfaceC2463o;
    }

    /* renamed from: a */
    public static /* synthetic */ LongBinaryOperator m159a(InterfaceC2463o interfaceC2463o) {
        if (interfaceC2463o == null) {
            return null;
        }
        return interfaceC2463o instanceof C2846c0 ? ((C2846c0) interfaceC2463o).f1165a : new C2848d0(interfaceC2463o);
    }

    @Override // java.util.function.LongBinaryOperator
    public /* synthetic */ long applyAsLong(long j, long j2) {
        return this.f1167a.applyAsLong(j, j2);
    }
}
