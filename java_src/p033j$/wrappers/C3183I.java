package p033j$.wrappers;

import java.util.function.DoubleToLongFunction;
import p033j$.util.function.InterfaceC2822h;
/* renamed from: j$.wrappers.I */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3183I implements DoubleToLongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2822h f1227a;

    private /* synthetic */ C3183I(InterfaceC2822h interfaceC2822h) {
        this.f1227a = interfaceC2822h;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleToLongFunction m215a(InterfaceC2822h interfaceC2822h) {
        if (interfaceC2822h == null) {
            return null;
        }
        return interfaceC2822h instanceof C3181H ? ((C3181H) interfaceC2822h).f1225a : new C3183I(interfaceC2822h);
    }

    @Override // java.util.function.DoubleToLongFunction
    public /* synthetic */ long applyAsLong(double d) {
        return this.f1227a.applyAsLong(d);
    }
}
