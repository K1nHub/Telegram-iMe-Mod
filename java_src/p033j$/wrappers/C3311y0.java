package p033j$.wrappers;

import java.util.function.Supplier;
import p033j$.util.function.InterfaceC2894y;
/* renamed from: j$.wrappers.y0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3311y0 implements InterfaceC2894y {

    /* renamed from: a */
    final /* synthetic */ Supplier f1304a;

    private /* synthetic */ C3311y0(Supplier supplier) {
        this.f1304a = supplier;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2894y m107a(Supplier supplier) {
        if (supplier == null) {
            return null;
        }
        return supplier instanceof C3313z0 ? ((C3313z0) supplier).f1306a : new C3311y0(supplier);
    }

    @Override // p033j$.util.function.InterfaceC2894y
    public /* synthetic */ Object get() {
        return this.f1304a.get();
    }
}
