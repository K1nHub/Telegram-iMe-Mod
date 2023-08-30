package p033j$.wrappers;

import java.util.function.Supplier;
import p033j$.util.function.InterfaceC2978y;
/* renamed from: j$.wrappers.y0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3395y0 implements InterfaceC2978y {

    /* renamed from: a */
    final /* synthetic */ Supplier f1313a;

    private /* synthetic */ C3395y0(Supplier supplier) {
        this.f1313a = supplier;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2978y m107a(Supplier supplier) {
        if (supplier == null) {
            return null;
        }
        return supplier instanceof C3397z0 ? ((C3397z0) supplier).f1315a : new C3395y0(supplier);
    }

    @Override // p033j$.util.function.InterfaceC2978y
    public /* synthetic */ Object get() {
        return this.f1313a.get();
    }
}
