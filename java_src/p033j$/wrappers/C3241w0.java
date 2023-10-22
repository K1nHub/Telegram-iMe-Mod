package p033j$.wrappers;

import java.util.function.Supplier;
import p033j$.util.function.InterfaceC2834x;
/* renamed from: j$.wrappers.w0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3241w0 implements Supplier {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2834x f1344a;

    private /* synthetic */ C3241w0(InterfaceC2834x interfaceC2834x) {
        this.f1344a = interfaceC2834x;
    }

    /* renamed from: a */
    public static /* synthetic */ Supplier m160a(InterfaceC2834x interfaceC2834x) {
        if (interfaceC2834x == null) {
            return null;
        }
        return interfaceC2834x instanceof C3239v0 ? ((C3239v0) interfaceC2834x).f1342a : new C3241w0(interfaceC2834x);
    }

    @Override // java.util.function.Supplier
    public /* synthetic */ Object get() {
        return this.f1344a.get();
    }
}
