package p034j$.wrappers;

import java.util.function.Supplier;
import p034j$.util.function.InterfaceC2611y;
/* renamed from: j$.wrappers.y0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3028y0 implements InterfaceC2611y {

    /* renamed from: a */
    final /* synthetic */ Supplier f1215a;

    private /* synthetic */ C3028y0(Supplier supplier) {
        this.f1215a = supplier;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2611y m103a(Supplier supplier) {
        if (supplier == null) {
            return null;
        }
        return supplier instanceof C3030z0 ? ((C3030z0) supplier).f1217a : new C3028y0(supplier);
    }

    @Override // p034j$.util.function.InterfaceC2611y
    public /* synthetic */ Object get() {
        return this.f1215a.get();
    }
}
