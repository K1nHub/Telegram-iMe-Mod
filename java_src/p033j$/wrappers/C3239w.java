package p033j$.wrappers;

import java.util.function.DoubleBinaryOperator;
import p033j$.util.function.InterfaceC2813d;
/* renamed from: j$.wrappers.w */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3239w implements InterfaceC2813d {

    /* renamed from: a */
    final /* synthetic */ DoubleBinaryOperator f1343a;

    private /* synthetic */ C3239w(DoubleBinaryOperator doubleBinaryOperator) {
        this.f1343a = doubleBinaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2813d m166a(DoubleBinaryOperator doubleBinaryOperator) {
        if (doubleBinaryOperator == null) {
            return null;
        }
        return doubleBinaryOperator instanceof C3241x ? ((C3241x) doubleBinaryOperator).f1345a : new C3239w(doubleBinaryOperator);
    }

    @Override // p033j$.util.function.InterfaceC2813d
    public /* synthetic */ double applyAsDouble(double d, double d2) {
        return this.f1343a.applyAsDouble(d, d2);
    }
}
