package p033j$.wrappers;

import java.util.function.DoubleBinaryOperator;
import p033j$.util.function.InterfaceC2818d;
/* renamed from: j$.wrappers.x */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3253x implements InterfaceC2818d {

    /* renamed from: a */
    final /* synthetic */ DoubleBinaryOperator f1297a;

    private /* synthetic */ C3253x(DoubleBinaryOperator doubleBinaryOperator) {
        this.f1297a = doubleBinaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2818d m92a(DoubleBinaryOperator doubleBinaryOperator) {
        if (doubleBinaryOperator == null) {
            return null;
        }
        return doubleBinaryOperator instanceof C3255y ? ((C3255y) doubleBinaryOperator).f1299a : new C3253x(doubleBinaryOperator);
    }

    @Override // p033j$.util.function.InterfaceC2818d
    public /* synthetic */ double applyAsDouble(double d, double d2) {
        return this.f1297a.applyAsDouble(d, d2);
    }
}
