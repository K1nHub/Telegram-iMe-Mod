package p035j$.wrappers;

import java.util.function.DoubleBinaryOperator;
import p035j$.util.function.InterfaceC2666d;
/* renamed from: j$.wrappers.y */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3103y implements DoubleBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2666d f1219a;

    private /* synthetic */ C3103y(InterfaceC2666d interfaceC2666d) {
        this.f1219a = interfaceC2666d;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleBinaryOperator m99a(InterfaceC2666d interfaceC2666d) {
        if (interfaceC2666d == null) {
            return null;
        }
        return interfaceC2666d instanceof C3101x ? ((C3101x) interfaceC2666d).f1217a : new C3103y(interfaceC2666d);
    }

    @Override // java.util.function.DoubleBinaryOperator
    public /* synthetic */ double applyAsDouble(double d, double d2) {
        return this.f1219a.applyAsDouble(d, d2);
    }
}
