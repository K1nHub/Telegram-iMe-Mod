package p033j$.wrappers;

import java.util.function.Supplier;
import p033j$.util.function.InterfaceC2833x;
/* renamed from: j$.wrappers.w0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3240w0 implements Supplier {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2833x f1344a;

    private /* synthetic */ C3240w0(InterfaceC2833x interfaceC2833x) {
        this.f1344a = interfaceC2833x;
    }

    /* renamed from: a */
    public static /* synthetic */ Supplier m165a(InterfaceC2833x interfaceC2833x) {
        if (interfaceC2833x == null) {
            return null;
        }
        return interfaceC2833x instanceof C3238v0 ? ((C3238v0) interfaceC2833x).f1342a : new C3240w0(interfaceC2833x);
    }

    @Override // java.util.function.Supplier
    public /* synthetic */ Object get() {
        return this.f1344a.get();
    }
}
