package p034j$.wrappers;

import java.util.function.Supplier;
import p034j$.util.function.InterfaceC2611y;
/* renamed from: j$.wrappers.z0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3030z0 implements Supplier {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2611y f1217a;

    private /* synthetic */ C3030z0(InterfaceC2611y interfaceC2611y) {
        this.f1217a = interfaceC2611y;
    }

    /* renamed from: a */
    public static /* synthetic */ Supplier m100a(InterfaceC2611y interfaceC2611y) {
        if (interfaceC2611y == null) {
            return null;
        }
        return interfaceC2611y instanceof C3028y0 ? ((C3028y0) interfaceC2611y).f1215a : new C3030z0(interfaceC2611y);
    }

    @Override // java.util.function.Supplier
    public /* synthetic */ Object get() {
        return this.f1217a.get();
    }
}
