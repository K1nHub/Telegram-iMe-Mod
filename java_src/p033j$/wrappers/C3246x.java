package p033j$.wrappers;

import java.util.function.DoubleBinaryOperator;
import p033j$.util.function.InterfaceC2818d;
/* renamed from: j$.wrappers.x */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3246x implements DoubleBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2818d f1345a;

    private /* synthetic */ C3246x(InterfaceC2818d interfaceC2818d) {
        this.f1345a = interfaceC2818d;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleBinaryOperator m161a(InterfaceC2818d interfaceC2818d) {
        if (interfaceC2818d == null) {
            return null;
        }
        return interfaceC2818d instanceof C3244w ? ((C3244w) interfaceC2818d).f1343a : new C3246x(interfaceC2818d);
    }

    @Override // java.util.function.DoubleBinaryOperator
    public /* synthetic */ double applyAsDouble(double d, double d2) {
        return this.f1345a.applyAsDouble(d, d2);
    }
}
