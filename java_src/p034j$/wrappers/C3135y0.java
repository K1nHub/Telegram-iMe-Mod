package p034j$.wrappers;

import java.util.function.Supplier;
import p034j$.util.function.InterfaceC2718y;
/* renamed from: j$.wrappers.y0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3135y0 implements InterfaceC2718y {

    /* renamed from: a */
    final /* synthetic */ Supplier f1218a;

    private /* synthetic */ C3135y0(Supplier supplier) {
        this.f1218a = supplier;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2718y m89a(Supplier supplier) {
        if (supplier == null) {
            return null;
        }
        return supplier instanceof C3137z0 ? ((C3137z0) supplier).f1220a : new C3135y0(supplier);
    }

    @Override // p034j$.util.function.InterfaceC2718y
    public /* synthetic */ Object get() {
        return this.f1218a.get();
    }
}
