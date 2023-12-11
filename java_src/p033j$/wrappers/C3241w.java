package p033j$.wrappers;

import java.util.function.DoubleBinaryOperator;
import p033j$.util.function.InterfaceC2815d;
/* renamed from: j$.wrappers.w */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3241w implements InterfaceC2815d {

    /* renamed from: a */
    final /* synthetic */ DoubleBinaryOperator f1343a;

    private /* synthetic */ C3241w(DoubleBinaryOperator doubleBinaryOperator) {
        this.f1343a = doubleBinaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2815d m163a(DoubleBinaryOperator doubleBinaryOperator) {
        if (doubleBinaryOperator == null) {
            return null;
        }
        return doubleBinaryOperator instanceof C3243x ? ((C3243x) doubleBinaryOperator).f1345a : new C3241w(doubleBinaryOperator);
    }

    @Override // p033j$.util.function.InterfaceC2815d
    public /* synthetic */ double applyAsDouble(double d, double d2) {
        return this.f1343a.applyAsDouble(d, d2);
    }
}
