package p034j$.wrappers;

import java.util.function.Supplier;
import p034j$.util.function.InterfaceC2674y;
/* renamed from: j$.wrappers.y0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3091y0 implements InterfaceC2674y {

    /* renamed from: a */
    final /* synthetic */ Supplier f1215a;

    private /* synthetic */ C3091y0(Supplier supplier) {
        this.f1215a = supplier;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2674y m84a(Supplier supplier) {
        if (supplier == null) {
            return null;
        }
        return supplier instanceof C3093z0 ? ((C3093z0) supplier).f1217a : new C3091y0(supplier);
    }

    @Override // p034j$.util.function.InterfaceC2674y
    public /* synthetic */ Object get() {
        return this.f1215a.get();
    }
}
