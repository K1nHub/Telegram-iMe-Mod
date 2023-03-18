package p034j$.wrappers;

import java.util.function.Supplier;
import p034j$.util.function.InterfaceC2597y;
/* renamed from: j$.wrappers.y0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3014y0 implements InterfaceC2597y {

    /* renamed from: a */
    final /* synthetic */ Supplier f1214a;

    private /* synthetic */ C3014y0(Supplier supplier) {
        this.f1214a = supplier;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2597y m104a(Supplier supplier) {
        if (supplier == null) {
            return null;
        }
        return supplier instanceof C3016z0 ? ((C3016z0) supplier).f1216a : new C3014y0(supplier);
    }

    @Override // p034j$.util.function.InterfaceC2597y
    public /* synthetic */ Object get() {
        return this.f1214a.get();
    }
}
