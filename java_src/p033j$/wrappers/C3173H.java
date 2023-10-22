package p033j$.wrappers;

import java.util.function.DoubleToLongFunction;
import p033j$.util.function.InterfaceC2818h;
/* renamed from: j$.wrappers.H */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3173H implements DoubleToLongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2818h f1276a;

    private /* synthetic */ C3173H(InterfaceC2818h interfaceC2818h) {
        this.f1276a = interfaceC2818h;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleToLongFunction m277a(InterfaceC2818h interfaceC2818h) {
        if (interfaceC2818h == null) {
            return null;
        }
        return interfaceC2818h instanceof C3171G ? ((C3171G) interfaceC2818h).f1274a : new C3173H(interfaceC2818h);
    }

    @Override // java.util.function.DoubleToLongFunction
    public /* synthetic */ long applyAsLong(double d) {
        return this.f1276a.applyAsLong(d);
    }
}
