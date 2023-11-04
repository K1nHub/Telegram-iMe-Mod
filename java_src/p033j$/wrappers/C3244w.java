package p033j$.wrappers;

import java.util.function.DoubleBinaryOperator;
import p033j$.util.function.InterfaceC2818d;
/* renamed from: j$.wrappers.w */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3244w implements InterfaceC2818d {

    /* renamed from: a */
    final /* synthetic */ DoubleBinaryOperator f1343a;

    private /* synthetic */ C3244w(DoubleBinaryOperator doubleBinaryOperator) {
        this.f1343a = doubleBinaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2818d m163a(DoubleBinaryOperator doubleBinaryOperator) {
        if (doubleBinaryOperator == null) {
            return null;
        }
        return doubleBinaryOperator instanceof C3246x ? ((C3246x) doubleBinaryOperator).f1345a : new C3244w(doubleBinaryOperator);
    }

    @Override // p033j$.util.function.InterfaceC2818d
    public /* synthetic */ double applyAsDouble(double d, double d2) {
        return this.f1343a.applyAsDouble(d, d2);
    }
}
