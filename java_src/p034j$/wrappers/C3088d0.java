package p034j$.wrappers;

import java.util.function.LongBinaryOperator;
import p034j$.util.function.InterfaceC2703o;
/* renamed from: j$.wrappers.d0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3088d0 implements LongBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2703o f1176a;

    private /* synthetic */ C3088d0(InterfaceC2703o interfaceC2703o) {
        this.f1176a = interfaceC2703o;
    }

    /* renamed from: a */
    public static /* synthetic */ LongBinaryOperator m144a(InterfaceC2703o interfaceC2703o) {
        if (interfaceC2703o == null) {
            return null;
        }
        return interfaceC2703o instanceof C3086c0 ? ((C3086c0) interfaceC2703o).f1174a : new C3088d0(interfaceC2703o);
    }

    @Override // java.util.function.LongBinaryOperator
    public /* synthetic */ long applyAsLong(long j, long j2) {
        return this.f1176a.applyAsLong(j, j2);
    }
}
