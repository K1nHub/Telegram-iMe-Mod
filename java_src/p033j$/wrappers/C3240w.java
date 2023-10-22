package p033j$.wrappers;

import java.util.function.DoubleBinaryOperator;
import p033j$.util.function.InterfaceC2814d;
/* renamed from: j$.wrappers.w */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3240w implements InterfaceC2814d {

    /* renamed from: a */
    final /* synthetic */ DoubleBinaryOperator f1343a;

    private /* synthetic */ C3240w(DoubleBinaryOperator doubleBinaryOperator) {
        this.f1343a = doubleBinaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2814d m161a(DoubleBinaryOperator doubleBinaryOperator) {
        if (doubleBinaryOperator == null) {
            return null;
        }
        return doubleBinaryOperator instanceof C3242x ? ((C3242x) doubleBinaryOperator).f1345a : new C3240w(doubleBinaryOperator);
    }

    @Override // p033j$.util.function.InterfaceC2814d
    public /* synthetic */ double applyAsDouble(double d, double d2) {
        return this.f1343a.applyAsDouble(d, d2);
    }
}
