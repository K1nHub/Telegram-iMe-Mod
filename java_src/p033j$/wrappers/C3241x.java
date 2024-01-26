package p033j$.wrappers;

import java.util.function.DoubleBinaryOperator;
import p033j$.util.function.InterfaceC2813d;
/* renamed from: j$.wrappers.x */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3241x implements DoubleBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2813d f1345a;

    private /* synthetic */ C3241x(InterfaceC2813d interfaceC2813d) {
        this.f1345a = interfaceC2813d;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleBinaryOperator m164a(InterfaceC2813d interfaceC2813d) {
        if (interfaceC2813d == null) {
            return null;
        }
        return interfaceC2813d instanceof C3239w ? ((C3239w) interfaceC2813d).f1343a : new C3241x(interfaceC2813d);
    }

    @Override // java.util.function.DoubleBinaryOperator
    public /* synthetic */ double applyAsDouble(double d, double d2) {
        return this.f1345a.applyAsDouble(d, d2);
    }
}
