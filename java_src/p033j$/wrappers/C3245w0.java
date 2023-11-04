package p033j$.wrappers;

import java.util.function.Supplier;
import p033j$.util.function.InterfaceC2838x;
/* renamed from: j$.wrappers.w0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3245w0 implements Supplier {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2838x f1344a;

    private /* synthetic */ C3245w0(InterfaceC2838x interfaceC2838x) {
        this.f1344a = interfaceC2838x;
    }

    /* renamed from: a */
    public static /* synthetic */ Supplier m162a(InterfaceC2838x interfaceC2838x) {
        if (interfaceC2838x == null) {
            return null;
        }
        return interfaceC2838x instanceof C3243v0 ? ((C3243v0) interfaceC2838x).f1342a : new C3245w0(interfaceC2838x);
    }

    @Override // java.util.function.Supplier
    public /* synthetic */ Object get() {
        return this.f1344a.get();
    }
}
