package p033j$.wrappers;

import java.util.function.Supplier;
import p033j$.util.function.InterfaceC2894y;
/* renamed from: j$.wrappers.z0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3313z0 implements Supplier {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2894y f1306a;

    private /* synthetic */ C3313z0(InterfaceC2894y interfaceC2894y) {
        this.f1306a = interfaceC2894y;
    }

    /* renamed from: a */
    public static /* synthetic */ Supplier m104a(InterfaceC2894y interfaceC2894y) {
        if (interfaceC2894y == null) {
            return null;
        }
        return interfaceC2894y instanceof C3311y0 ? ((C3311y0) interfaceC2894y).f1304a : new C3313z0(interfaceC2894y);
    }

    @Override // java.util.function.Supplier
    public /* synthetic */ Object get() {
        return this.f1306a.get();
    }
}
