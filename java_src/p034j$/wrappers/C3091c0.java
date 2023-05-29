package p034j$.wrappers;

import java.util.function.LongBinaryOperator;
import p034j$.util.function.InterfaceC2708o;
/* renamed from: j$.wrappers.c0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3091c0 implements InterfaceC2708o {

    /* renamed from: a */
    final /* synthetic */ LongBinaryOperator f1174a;

    private /* synthetic */ C3091c0(LongBinaryOperator longBinaryOperator) {
        this.f1174a = longBinaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2708o m146a(LongBinaryOperator longBinaryOperator) {
        if (longBinaryOperator == null) {
            return null;
        }
        return longBinaryOperator instanceof C3093d0 ? ((C3093d0) longBinaryOperator).f1176a : new C3091c0(longBinaryOperator);
    }

    @Override // p034j$.util.function.InterfaceC2708o
    public /* synthetic */ long applyAsLong(long j, long j2) {
        return this.f1174a.applyAsLong(j, j2);
    }
}
