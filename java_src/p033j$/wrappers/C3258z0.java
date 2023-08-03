package p033j$.wrappers;

import java.util.function.Supplier;
import p033j$.util.function.InterfaceC2839y;
/* renamed from: j$.wrappers.z0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3258z0 implements Supplier {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2839y f1305a;

    private /* synthetic */ C3258z0(InterfaceC2839y interfaceC2839y) {
        this.f1305a = interfaceC2839y;
    }

    /* renamed from: a */
    public static /* synthetic */ Supplier m104a(InterfaceC2839y interfaceC2839y) {
        if (interfaceC2839y == null) {
            return null;
        }
        return interfaceC2839y instanceof C3256y0 ? ((C3256y0) interfaceC2839y).f1303a : new C3258z0(interfaceC2839y);
    }

    @Override // java.util.function.Supplier
    public /* synthetic */ Object get() {
        return this.f1305a.get();
    }
}
