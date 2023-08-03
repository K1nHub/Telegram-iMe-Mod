package p033j$.wrappers;

import java.util.function.Supplier;
import p033j$.util.function.InterfaceC2839y;
/* renamed from: j$.wrappers.y0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3256y0 implements InterfaceC2839y {

    /* renamed from: a */
    final /* synthetic */ Supplier f1303a;

    private /* synthetic */ C3256y0(Supplier supplier) {
        this.f1303a = supplier;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2839y m107a(Supplier supplier) {
        if (supplier == null) {
            return null;
        }
        return supplier instanceof C3258z0 ? ((C3258z0) supplier).f1305a : new C3256y0(supplier);
    }

    @Override // p033j$.util.function.InterfaceC2839y
    public /* synthetic */ Object get() {
        return this.f1303a.get();
    }
}
