package p034j$.wrappers;

import java.util.function.DoubleBinaryOperator;
import p034j$.util.function.InterfaceC2692d;
/* renamed from: j$.wrappers.x */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3127x implements InterfaceC2692d {

    /* renamed from: a */
    final /* synthetic */ DoubleBinaryOperator f1215a;

    private /* synthetic */ C3127x(DoubleBinaryOperator doubleBinaryOperator) {
        this.f1215a = doubleBinaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2692d m92a(DoubleBinaryOperator doubleBinaryOperator) {
        if (doubleBinaryOperator == null) {
            return null;
        }
        return doubleBinaryOperator instanceof C3129y ? ((C3129y) doubleBinaryOperator).f1217a : new C3127x(doubleBinaryOperator);
    }

    @Override // p034j$.util.function.InterfaceC2692d
    public /* synthetic */ double applyAsDouble(double d, double d2) {
        return this.f1215a.applyAsDouble(d, d2);
    }
}
