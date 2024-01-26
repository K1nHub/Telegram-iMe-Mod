package p033j$.wrappers;

import java.util.function.DoubleToLongFunction;
import p033j$.util.function.InterfaceC2817h;
/* renamed from: j$.wrappers.H */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3172H implements DoubleToLongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2817h f1276a;

    private /* synthetic */ C3172H(InterfaceC2817h interfaceC2817h) {
        this.f1276a = interfaceC2817h;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleToLongFunction m281a(InterfaceC2817h interfaceC2817h) {
        if (interfaceC2817h == null) {
            return null;
        }
        return interfaceC2817h instanceof C3170G ? ((C3170G) interfaceC2817h).f1274a : new C3172H(interfaceC2817h);
    }

    @Override // java.util.function.DoubleToLongFunction
    public /* synthetic */ long applyAsLong(double d) {
        return this.f1276a.applyAsLong(d);
    }
}
