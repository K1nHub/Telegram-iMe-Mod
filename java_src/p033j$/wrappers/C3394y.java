package p033j$.wrappers;

import java.util.function.DoubleBinaryOperator;
import p033j$.util.function.InterfaceC2957d;
/* renamed from: j$.wrappers.y */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3394y implements DoubleBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2957d f1312a;

    private /* synthetic */ C3394y(InterfaceC2957d interfaceC2957d) {
        this.f1312a = interfaceC2957d;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleBinaryOperator m108a(InterfaceC2957d interfaceC2957d) {
        if (interfaceC2957d == null) {
            return null;
        }
        return interfaceC2957d instanceof C3392x ? ((C3392x) interfaceC2957d).f1310a : new C3394y(interfaceC2957d);
    }

    @Override // java.util.function.DoubleBinaryOperator
    public /* synthetic */ double applyAsDouble(double d, double d2) {
        return this.f1312a.applyAsDouble(d, d2);
    }
}
