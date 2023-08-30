package p033j$.wrappers;

import java.util.function.DoubleBinaryOperator;
import p033j$.util.function.InterfaceC2957d;
/* renamed from: j$.wrappers.x */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3392x implements InterfaceC2957d {

    /* renamed from: a */
    final /* synthetic */ DoubleBinaryOperator f1310a;

    private /* synthetic */ C3392x(DoubleBinaryOperator doubleBinaryOperator) {
        this.f1310a = doubleBinaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2957d m110a(DoubleBinaryOperator doubleBinaryOperator) {
        if (doubleBinaryOperator == null) {
            return null;
        }
        return doubleBinaryOperator instanceof C3394y ? ((C3394y) doubleBinaryOperator).f1312a : new C3392x(doubleBinaryOperator);
    }

    @Override // p033j$.util.function.InterfaceC2957d
    public /* synthetic */ double applyAsDouble(double d, double d2) {
        return this.f1310a.applyAsDouble(d, d2);
    }
}
