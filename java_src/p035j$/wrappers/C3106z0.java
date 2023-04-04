package p035j$.wrappers;

import java.util.function.Supplier;
import p035j$.util.function.InterfaceC2687y;
/* renamed from: j$.wrappers.z0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3106z0 implements Supplier {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2687y f1222a;

    private /* synthetic */ C3106z0(InterfaceC2687y interfaceC2687y) {
        this.f1222a = interfaceC2687y;
    }

    /* renamed from: a */
    public static /* synthetic */ Supplier m95a(InterfaceC2687y interfaceC2687y) {
        if (interfaceC2687y == null) {
            return null;
        }
        return interfaceC2687y instanceof C3104y0 ? ((C3104y0) interfaceC2687y).f1220a : new C3106z0(interfaceC2687y);
    }

    @Override // java.util.function.Supplier
    public /* synthetic */ Object get() {
        return this.f1222a.get();
    }
}
