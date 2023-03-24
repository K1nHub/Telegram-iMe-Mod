package p034j$.wrappers;

import java.util.function.DoubleToLongFunction;
import p034j$.util.function.InterfaceC2594h;
/* renamed from: j$.wrappers.I */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2955I implements DoubleToLongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2594h f1142a;

    private /* synthetic */ C2955I(InterfaceC2594h interfaceC2594h) {
        this.f1142a = interfaceC2594h;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleToLongFunction m229a(InterfaceC2594h interfaceC2594h) {
        if (interfaceC2594h == null) {
            return null;
        }
        return interfaceC2594h instanceof C2953H ? ((C2953H) interfaceC2594h).f1140a : new C2955I(interfaceC2594h);
    }

    @Override // java.util.function.DoubleToLongFunction
    public /* synthetic */ long applyAsLong(double d) {
        return this.f1142a.applyAsLong(d);
    }
}
