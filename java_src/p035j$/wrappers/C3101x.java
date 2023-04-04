package p035j$.wrappers;

import java.util.function.DoubleBinaryOperator;
import p035j$.util.function.InterfaceC2666d;
/* renamed from: j$.wrappers.x */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3101x implements InterfaceC2666d {

    /* renamed from: a */
    final /* synthetic */ DoubleBinaryOperator f1217a;

    private /* synthetic */ C3101x(DoubleBinaryOperator doubleBinaryOperator) {
        this.f1217a = doubleBinaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2666d m101a(DoubleBinaryOperator doubleBinaryOperator) {
        if (doubleBinaryOperator == null) {
            return null;
        }
        return doubleBinaryOperator instanceof C3103y ? ((C3103y) doubleBinaryOperator).f1219a : new C3101x(doubleBinaryOperator);
    }

    @Override // p035j$.util.function.InterfaceC2666d
    public /* synthetic */ double applyAsDouble(double d, double d2) {
        return this.f1217a.applyAsDouble(d, d2);
    }
}
