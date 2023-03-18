package p034j$.wrappers;

import java.util.function.DoubleBinaryOperator;
import p034j$.util.function.InterfaceC2576d;
/* renamed from: j$.wrappers.x */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3011x implements InterfaceC2576d {

    /* renamed from: a */
    final /* synthetic */ DoubleBinaryOperator f1211a;

    private /* synthetic */ C3011x(DoubleBinaryOperator doubleBinaryOperator) {
        this.f1211a = doubleBinaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2576d m107a(DoubleBinaryOperator doubleBinaryOperator) {
        if (doubleBinaryOperator == null) {
            return null;
        }
        return doubleBinaryOperator instanceof C3013y ? ((C3013y) doubleBinaryOperator).f1213a : new C3011x(doubleBinaryOperator);
    }

    @Override // p034j$.util.function.InterfaceC2576d
    public /* synthetic */ double applyAsDouble(double d, double d2) {
        return this.f1211a.applyAsDouble(d, d2);
    }
}
