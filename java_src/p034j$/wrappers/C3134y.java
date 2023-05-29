package p034j$.wrappers;

import java.util.function.DoubleBinaryOperator;
import p034j$.util.function.InterfaceC2697d;
/* renamed from: j$.wrappers.y */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3134y implements DoubleBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2697d f1217a;

    private /* synthetic */ C3134y(InterfaceC2697d interfaceC2697d) {
        this.f1217a = interfaceC2697d;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleBinaryOperator m90a(InterfaceC2697d interfaceC2697d) {
        if (interfaceC2697d == null) {
            return null;
        }
        return interfaceC2697d instanceof C3132x ? ((C3132x) interfaceC2697d).f1215a : new C3134y(interfaceC2697d);
    }

    @Override // java.util.function.DoubleBinaryOperator
    public /* synthetic */ double applyAsDouble(double d, double d2) {
        return this.f1217a.applyAsDouble(d, d2);
    }
}
