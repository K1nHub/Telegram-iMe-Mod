package p034j$.wrappers;

import java.util.function.Supplier;
import p034j$.util.function.InterfaceC2674y;
/* renamed from: j$.wrappers.z0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3093z0 implements Supplier {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2674y f1217a;

    private /* synthetic */ C3093z0(InterfaceC2674y interfaceC2674y) {
        this.f1217a = interfaceC2674y;
    }

    /* renamed from: a */
    public static /* synthetic */ Supplier m81a(InterfaceC2674y interfaceC2674y) {
        if (interfaceC2674y == null) {
            return null;
        }
        return interfaceC2674y instanceof C3091y0 ? ((C3091y0) interfaceC2674y).f1215a : new C3093z0(interfaceC2674y);
    }

    @Override // java.util.function.Supplier
    public /* synthetic */ Object get() {
        return this.f1217a.get();
    }
}
