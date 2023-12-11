package p033j$.wrappers;

import java.util.function.DoubleToLongFunction;
import p033j$.util.function.InterfaceC2819h;
/* renamed from: j$.wrappers.H */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3174H implements DoubleToLongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2819h f1276a;

    private /* synthetic */ C3174H(InterfaceC2819h interfaceC2819h) {
        this.f1276a = interfaceC2819h;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleToLongFunction m278a(InterfaceC2819h interfaceC2819h) {
        if (interfaceC2819h == null) {
            return null;
        }
        return interfaceC2819h instanceof C3172G ? ((C3172G) interfaceC2819h).f1274a : new C3174H(interfaceC2819h);
    }

    @Override // java.util.function.DoubleToLongFunction
    public /* synthetic */ long applyAsLong(double d) {
        return this.f1276a.applyAsLong(d);
    }
}
