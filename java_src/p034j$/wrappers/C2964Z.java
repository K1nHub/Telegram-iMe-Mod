package p034j$.wrappers;

import java.util.function.IntToLongFunction;
import p034j$.util.function.InterfaceC2586n;
/* renamed from: j$.wrappers.Z */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2964Z implements IntToLongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2586n f1164a;

    private /* synthetic */ C2964Z(InterfaceC2586n interfaceC2586n) {
        this.f1164a = interfaceC2586n;
    }

    /* renamed from: a */
    public static /* synthetic */ IntToLongFunction m170a(InterfaceC2586n interfaceC2586n) {
        if (interfaceC2586n == null) {
            return null;
        }
        return interfaceC2586n instanceof C2963Y ? ((C2963Y) interfaceC2586n).f1163a : new C2964Z(interfaceC2586n);
    }

    @Override // java.util.function.IntToLongFunction
    public /* synthetic */ long applyAsLong(int i) {
        return this.f1164a.applyAsLong(i);
    }
}
