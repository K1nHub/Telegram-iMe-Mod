package p033j$.wrappers;

import java.util.function.Supplier;
import p033j$.util.function.InterfaceC2978y;
/* renamed from: j$.wrappers.z0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3397z0 implements Supplier {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2978y f1315a;

    private /* synthetic */ C3397z0(InterfaceC2978y interfaceC2978y) {
        this.f1315a = interfaceC2978y;
    }

    /* renamed from: a */
    public static /* synthetic */ Supplier m104a(InterfaceC2978y interfaceC2978y) {
        if (interfaceC2978y == null) {
            return null;
        }
        return interfaceC2978y instanceof C3395y0 ? ((C3395y0) interfaceC2978y).f1313a : new C3397z0(interfaceC2978y);
    }

    @Override // java.util.function.Supplier
    public /* synthetic */ Object get() {
        return this.f1315a.get();
    }
}
