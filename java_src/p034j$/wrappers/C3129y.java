package p034j$.wrappers;

import java.util.function.DoubleBinaryOperator;
import p034j$.util.function.InterfaceC2692d;
/* renamed from: j$.wrappers.y */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3129y implements DoubleBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2692d f1217a;

    private /* synthetic */ C3129y(InterfaceC2692d interfaceC2692d) {
        this.f1217a = interfaceC2692d;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleBinaryOperator m90a(InterfaceC2692d interfaceC2692d) {
        if (interfaceC2692d == null) {
            return null;
        }
        return interfaceC2692d instanceof C3127x ? ((C3127x) interfaceC2692d).f1215a : new C3129y(interfaceC2692d);
    }

    @Override // java.util.function.DoubleBinaryOperator
    public /* synthetic */ double applyAsDouble(double d, double d2) {
        return this.f1217a.applyAsDouble(d, d2);
    }
}
