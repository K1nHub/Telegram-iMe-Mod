package p033j$.wrappers;

import java.util.function.DoubleBinaryOperator;
import p033j$.util.function.InterfaceC2873d;
/* renamed from: j$.wrappers.x */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3308x implements InterfaceC2873d {

    /* renamed from: a */
    final /* synthetic */ DoubleBinaryOperator f1301a;

    private /* synthetic */ C3308x(DoubleBinaryOperator doubleBinaryOperator) {
        this.f1301a = doubleBinaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2873d m110a(DoubleBinaryOperator doubleBinaryOperator) {
        if (doubleBinaryOperator == null) {
            return null;
        }
        return doubleBinaryOperator instanceof C3310y ? ((C3310y) doubleBinaryOperator).f1303a : new C3308x(doubleBinaryOperator);
    }

    @Override // p033j$.util.function.InterfaceC2873d
    public /* synthetic */ double applyAsDouble(double d, double d2) {
        return this.f1301a.applyAsDouble(d, d2);
    }
}
