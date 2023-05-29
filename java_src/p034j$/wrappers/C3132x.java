package p034j$.wrappers;

import java.util.function.DoubleBinaryOperator;
import p034j$.util.function.InterfaceC2697d;
/* renamed from: j$.wrappers.x */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3132x implements InterfaceC2697d {

    /* renamed from: a */
    final /* synthetic */ DoubleBinaryOperator f1215a;

    private /* synthetic */ C3132x(DoubleBinaryOperator doubleBinaryOperator) {
        this.f1215a = doubleBinaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2697d m92a(DoubleBinaryOperator doubleBinaryOperator) {
        if (doubleBinaryOperator == null) {
            return null;
        }
        return doubleBinaryOperator instanceof C3134y ? ((C3134y) doubleBinaryOperator).f1217a : new C3132x(doubleBinaryOperator);
    }

    @Override // p034j$.util.function.InterfaceC2697d
    public /* synthetic */ double applyAsDouble(double d, double d2) {
        return this.f1215a.applyAsDouble(d, d2);
    }
}
