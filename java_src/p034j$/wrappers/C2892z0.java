package p034j$.wrappers;

import java.util.function.Supplier;
import p034j$.util.function.InterfaceC2473y;
/* renamed from: j$.wrappers.z0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2892z0 implements Supplier {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2473y f1211a;

    private /* synthetic */ C2892z0(InterfaceC2473y interfaceC2473y) {
        this.f1211a = interfaceC2473y;
    }

    /* renamed from: a */
    public static /* synthetic */ Supplier m101a(InterfaceC2473y interfaceC2473y) {
        if (interfaceC2473y == null) {
            return null;
        }
        return interfaceC2473y instanceof C2890y0 ? ((C2890y0) interfaceC2473y).f1209a : new C2892z0(interfaceC2473y);
    }

    @Override // java.util.function.Supplier
    public /* synthetic */ Object get() {
        return this.f1211a.get();
    }
}
