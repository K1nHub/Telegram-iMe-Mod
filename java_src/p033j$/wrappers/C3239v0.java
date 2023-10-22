package p033j$.wrappers;

import java.util.function.Supplier;
import p033j$.util.function.InterfaceC2834x;
/* renamed from: j$.wrappers.v0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3239v0 implements InterfaceC2834x {

    /* renamed from: a */
    final /* synthetic */ Supplier f1342a;

    private /* synthetic */ C3239v0(Supplier supplier) {
        this.f1342a = supplier;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2834x m162a(Supplier supplier) {
        if (supplier == null) {
            return null;
        }
        return supplier instanceof C3241w0 ? ((C3241w0) supplier).f1344a : new C3239v0(supplier);
    }

    @Override // p033j$.util.function.InterfaceC2834x
    public /* synthetic */ Object get() {
        return this.f1342a.get();
    }
}
