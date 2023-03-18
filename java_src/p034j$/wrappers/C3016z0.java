package p034j$.wrappers;

import java.util.function.Supplier;
import p034j$.util.function.InterfaceC2597y;
/* renamed from: j$.wrappers.z0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3016z0 implements Supplier {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2597y f1216a;

    private /* synthetic */ C3016z0(InterfaceC2597y interfaceC2597y) {
        this.f1216a = interfaceC2597y;
    }

    /* renamed from: a */
    public static /* synthetic */ Supplier m101a(InterfaceC2597y interfaceC2597y) {
        if (interfaceC2597y == null) {
            return null;
        }
        return interfaceC2597y instanceof C3014y0 ? ((C3014y0) interfaceC2597y).f1214a : new C3016z0(interfaceC2597y);
    }

    @Override // java.util.function.Supplier
    public /* synthetic */ Object get() {
        return this.f1216a.get();
    }
}
