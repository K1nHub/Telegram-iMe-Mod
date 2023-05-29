package p034j$.wrappers;

import java.util.function.Supplier;
import p034j$.util.function.InterfaceC2713y;
/* renamed from: j$.wrappers.z0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3132z0 implements Supplier {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2713y f1220a;

    private /* synthetic */ C3132z0(InterfaceC2713y interfaceC2713y) {
        this.f1220a = interfaceC2713y;
    }

    /* renamed from: a */
    public static /* synthetic */ Supplier m86a(InterfaceC2713y interfaceC2713y) {
        if (interfaceC2713y == null) {
            return null;
        }
        return interfaceC2713y instanceof C3130y0 ? ((C3130y0) interfaceC2713y).f1218a : new C3132z0(interfaceC2713y);
    }

    @Override // java.util.function.Supplier
    public /* synthetic */ Object get() {
        return this.f1220a.get();
    }
}
