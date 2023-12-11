package p033j$.wrappers;

import java.util.function.DoubleBinaryOperator;
import p033j$.util.function.InterfaceC2815d;
/* renamed from: j$.wrappers.x */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3243x implements DoubleBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2815d f1345a;

    private /* synthetic */ C3243x(InterfaceC2815d interfaceC2815d) {
        this.f1345a = interfaceC2815d;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleBinaryOperator m161a(InterfaceC2815d interfaceC2815d) {
        if (interfaceC2815d == null) {
            return null;
        }
        return interfaceC2815d instanceof C3241w ? ((C3241w) interfaceC2815d).f1343a : new C3243x(interfaceC2815d);
    }

    @Override // java.util.function.DoubleBinaryOperator
    public /* synthetic */ double applyAsDouble(double d, double d2) {
        return this.f1345a.applyAsDouble(d, d2);
    }
}
