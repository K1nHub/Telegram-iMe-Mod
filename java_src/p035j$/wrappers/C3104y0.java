package p035j$.wrappers;

import java.util.function.Supplier;
import p035j$.util.function.InterfaceC2687y;
/* renamed from: j$.wrappers.y0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3104y0 implements InterfaceC2687y {

    /* renamed from: a */
    final /* synthetic */ Supplier f1220a;

    private /* synthetic */ C3104y0(Supplier supplier) {
        this.f1220a = supplier;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2687y m98a(Supplier supplier) {
        if (supplier == null) {
            return null;
        }
        return supplier instanceof C3106z0 ? ((C3106z0) supplier).f1222a : new C3104y0(supplier);
    }

    @Override // p035j$.util.function.InterfaceC2687y
    public /* synthetic */ Object get() {
        return this.f1220a.get();
    }
}
