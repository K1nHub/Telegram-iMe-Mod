package p035j$.wrappers;

import java.util.function.IntFunction;
import p035j$.util.function.InterfaceC2675m;
/* renamed from: j$.wrappers.T */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3048T implements IntFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2675m f1164a;

    private /* synthetic */ C3048T(InterfaceC2675m interfaceC2675m) {
        this.f1164a = interfaceC2675m;
    }

    /* renamed from: a */
    public static /* synthetic */ IntFunction m171a(InterfaceC2675m interfaceC2675m) {
        if (interfaceC2675m == null) {
            return null;
        }
        return interfaceC2675m instanceof C3047S ? ((C3047S) interfaceC2675m).f1163a : new C3048T(interfaceC2675m);
    }

    @Override // java.util.function.IntFunction
    public /* synthetic */ Object apply(int i) {
        return this.f1164a.apply(i);
    }
}
