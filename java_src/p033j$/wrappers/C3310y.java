package p033j$.wrappers;

import java.util.function.DoubleBinaryOperator;
import p033j$.util.function.InterfaceC2873d;
/* renamed from: j$.wrappers.y */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3310y implements DoubleBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2873d f1303a;

    private /* synthetic */ C3310y(InterfaceC2873d interfaceC2873d) {
        this.f1303a = interfaceC2873d;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleBinaryOperator m108a(InterfaceC2873d interfaceC2873d) {
        if (interfaceC2873d == null) {
            return null;
        }
        return interfaceC2873d instanceof C3308x ? ((C3308x) interfaceC2873d).f1301a : new C3310y(interfaceC2873d);
    }

    @Override // java.util.function.DoubleBinaryOperator
    public /* synthetic */ double applyAsDouble(double d, double d2) {
        return this.f1303a.applyAsDouble(d, d2);
    }
}
