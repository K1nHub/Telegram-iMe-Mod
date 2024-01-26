package p033j$.wrappers;

import java.util.function.Supplier;
import p033j$.util.function.InterfaceC2833x;
/* renamed from: j$.wrappers.v0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3238v0 implements InterfaceC2833x {

    /* renamed from: a */
    final /* synthetic */ Supplier f1342a;

    private /* synthetic */ C3238v0(Supplier supplier) {
        this.f1342a = supplier;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2833x m167a(Supplier supplier) {
        if (supplier == null) {
            return null;
        }
        return supplier instanceof C3240w0 ? ((C3240w0) supplier).f1344a : new C3238v0(supplier);
    }

    @Override // p033j$.util.function.InterfaceC2833x
    public /* synthetic */ Object get() {
        return this.f1342a.get();
    }
}
