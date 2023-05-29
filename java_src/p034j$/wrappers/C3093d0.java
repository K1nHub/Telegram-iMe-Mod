package p034j$.wrappers;

import java.util.function.LongBinaryOperator;
import p034j$.util.function.InterfaceC2708o;
/* renamed from: j$.wrappers.d0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3093d0 implements LongBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2708o f1176a;

    private /* synthetic */ C3093d0(InterfaceC2708o interfaceC2708o) {
        this.f1176a = interfaceC2708o;
    }

    /* renamed from: a */
    public static /* synthetic */ LongBinaryOperator m144a(InterfaceC2708o interfaceC2708o) {
        if (interfaceC2708o == null) {
            return null;
        }
        return interfaceC2708o instanceof C3091c0 ? ((C3091c0) interfaceC2708o).f1174a : new C3093d0(interfaceC2708o);
    }

    @Override // java.util.function.LongBinaryOperator
    public /* synthetic */ long applyAsLong(long j, long j2) {
        return this.f1176a.applyAsLong(j, j2);
    }
}
