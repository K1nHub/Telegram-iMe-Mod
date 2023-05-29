package p034j$.wrappers;

import java.util.function.Supplier;
import p034j$.util.function.InterfaceC2718y;
/* renamed from: j$.wrappers.z0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3137z0 implements Supplier {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2718y f1220a;

    private /* synthetic */ C3137z0(InterfaceC2718y interfaceC2718y) {
        this.f1220a = interfaceC2718y;
    }

    /* renamed from: a */
    public static /* synthetic */ Supplier m86a(InterfaceC2718y interfaceC2718y) {
        if (interfaceC2718y == null) {
            return null;
        }
        return interfaceC2718y instanceof C3135y0 ? ((C3135y0) interfaceC2718y).f1218a : new C3137z0(interfaceC2718y);
    }

    @Override // java.util.function.Supplier
    public /* synthetic */ Object get() {
        return this.f1220a.get();
    }
}
