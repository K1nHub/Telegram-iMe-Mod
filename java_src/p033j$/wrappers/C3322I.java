package p033j$.wrappers;

import java.util.function.DoubleToLongFunction;
import p033j$.util.function.InterfaceC2961h;
/* renamed from: j$.wrappers.I */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3322I implements DoubleToLongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2961h f1240a;

    private /* synthetic */ C3322I(InterfaceC2961h interfaceC2961h) {
        this.f1240a = interfaceC2961h;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleToLongFunction m233a(InterfaceC2961h interfaceC2961h) {
        if (interfaceC2961h == null) {
            return null;
        }
        return interfaceC2961h instanceof C3320H ? ((C3320H) interfaceC2961h).f1238a : new C3322I(interfaceC2961h);
    }

    @Override // java.util.function.DoubleToLongFunction
    public /* synthetic */ long applyAsLong(double d) {
        return this.f1240a.applyAsLong(d);
    }
}
