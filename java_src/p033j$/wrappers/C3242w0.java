package p033j$.wrappers;

import java.util.function.Supplier;
import p033j$.util.function.InterfaceC2835x;
/* renamed from: j$.wrappers.w0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3242w0 implements Supplier {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2835x f1344a;

    private /* synthetic */ C3242w0(InterfaceC2835x interfaceC2835x) {
        this.f1344a = interfaceC2835x;
    }

    /* renamed from: a */
    public static /* synthetic */ Supplier m162a(InterfaceC2835x interfaceC2835x) {
        if (interfaceC2835x == null) {
            return null;
        }
        return interfaceC2835x instanceof C3240v0 ? ((C3240v0) interfaceC2835x).f1342a : new C3242w0(interfaceC2835x);
    }

    @Override // java.util.function.Supplier
    public /* synthetic */ Object get() {
        return this.f1344a.get();
    }
}
