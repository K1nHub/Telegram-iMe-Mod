package p033j$.wrappers;

import java.util.function.DoubleToLongFunction;
import p033j$.util.function.InterfaceC2877h;
/* renamed from: j$.wrappers.I */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3238I implements DoubleToLongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2877h f1231a;

    private /* synthetic */ C3238I(InterfaceC2877h interfaceC2877h) {
        this.f1231a = interfaceC2877h;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleToLongFunction m233a(InterfaceC2877h interfaceC2877h) {
        if (interfaceC2877h == null) {
            return null;
        }
        return interfaceC2877h instanceof C3236H ? ((C3236H) interfaceC2877h).f1229a : new C3238I(interfaceC2877h);
    }

    @Override // java.util.function.DoubleToLongFunction
    public /* synthetic */ long applyAsLong(double d) {
        return this.f1231a.applyAsLong(d);
    }
}
