package p033j$.wrappers;

import java.util.function.DoubleBinaryOperator;
import p033j$.util.function.InterfaceC2814d;
/* renamed from: j$.wrappers.x */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3242x implements DoubleBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2814d f1345a;

    private /* synthetic */ C3242x(InterfaceC2814d interfaceC2814d) {
        this.f1345a = interfaceC2814d;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleBinaryOperator m159a(InterfaceC2814d interfaceC2814d) {
        if (interfaceC2814d == null) {
            return null;
        }
        return interfaceC2814d instanceof C3240w ? ((C3240w) interfaceC2814d).f1343a : new C3242x(interfaceC2814d);
    }

    @Override // java.util.function.DoubleBinaryOperator
    public /* synthetic */ double applyAsDouble(double d, double d2) {
        return this.f1345a.applyAsDouble(d, d2);
    }
}
