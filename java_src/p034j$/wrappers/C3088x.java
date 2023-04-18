package p034j$.wrappers;

import java.util.function.DoubleBinaryOperator;
import p034j$.util.function.InterfaceC2653d;
/* renamed from: j$.wrappers.x */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3088x implements InterfaceC2653d {

    /* renamed from: a */
    final /* synthetic */ DoubleBinaryOperator f1212a;

    private /* synthetic */ C3088x(DoubleBinaryOperator doubleBinaryOperator) {
        this.f1212a = doubleBinaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2653d m87a(DoubleBinaryOperator doubleBinaryOperator) {
        if (doubleBinaryOperator == null) {
            return null;
        }
        return doubleBinaryOperator instanceof C3090y ? ((C3090y) doubleBinaryOperator).f1214a : new C3088x(doubleBinaryOperator);
    }

    @Override // p034j$.util.function.InterfaceC2653d
    public /* synthetic */ double applyAsDouble(double d, double d2) {
        return this.f1212a.applyAsDouble(d, d2);
    }
}
