package p034j$.wrappers;

import java.util.function.DoubleBinaryOperator;
import p034j$.util.function.InterfaceC2452d;
/* renamed from: j$.wrappers.x */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2887x implements InterfaceC2452d {

    /* renamed from: a */
    final /* synthetic */ DoubleBinaryOperator f1206a;

    private /* synthetic */ C2887x(DoubleBinaryOperator doubleBinaryOperator) {
        this.f1206a = doubleBinaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2452d m107a(DoubleBinaryOperator doubleBinaryOperator) {
        if (doubleBinaryOperator == null) {
            return null;
        }
        return doubleBinaryOperator instanceof C2889y ? ((C2889y) doubleBinaryOperator).f1208a : new C2887x(doubleBinaryOperator);
    }

    @Override // p034j$.util.function.InterfaceC2452d
    public /* synthetic */ double applyAsDouble(double d, double d2) {
        return this.f1206a.applyAsDouble(d, d2);
    }
}
