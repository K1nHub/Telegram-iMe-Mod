package p034j$.wrappers;

import java.util.function.DoubleBinaryOperator;
import p034j$.util.function.InterfaceC2590d;
/* renamed from: j$.wrappers.x */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3025x implements InterfaceC2590d {

    /* renamed from: a */
    final /* synthetic */ DoubleBinaryOperator f1212a;

    private /* synthetic */ C3025x(DoubleBinaryOperator doubleBinaryOperator) {
        this.f1212a = doubleBinaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2590d m106a(DoubleBinaryOperator doubleBinaryOperator) {
        if (doubleBinaryOperator == null) {
            return null;
        }
        return doubleBinaryOperator instanceof C3027y ? ((C3027y) doubleBinaryOperator).f1214a : new C3025x(doubleBinaryOperator);
    }

    @Override // p034j$.util.function.InterfaceC2590d
    public /* synthetic */ double applyAsDouble(double d, double d2) {
        return this.f1212a.applyAsDouble(d, d2);
    }
}
