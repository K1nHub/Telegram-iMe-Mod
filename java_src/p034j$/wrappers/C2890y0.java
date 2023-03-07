package p034j$.wrappers;

import java.util.function.Supplier;
import p034j$.util.function.InterfaceC2473y;
/* renamed from: j$.wrappers.y0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2890y0 implements InterfaceC2473y {

    /* renamed from: a */
    final /* synthetic */ Supplier f1209a;

    private /* synthetic */ C2890y0(Supplier supplier) {
        this.f1209a = supplier;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2473y m104a(Supplier supplier) {
        if (supplier == null) {
            return null;
        }
        return supplier instanceof C2892z0 ? ((C2892z0) supplier).f1211a : new C2890y0(supplier);
    }

    @Override // p034j$.util.function.InterfaceC2473y
    public /* synthetic */ Object get() {
        return this.f1209a.get();
    }
}
