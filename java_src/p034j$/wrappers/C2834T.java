package p034j$.wrappers;

import java.util.function.IntFunction;
import p034j$.util.function.InterfaceC2461m;
/* renamed from: j$.wrappers.T */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2834T implements IntFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2461m f1153a;

    private /* synthetic */ C2834T(InterfaceC2461m interfaceC2461m) {
        this.f1153a = interfaceC2461m;
    }

    /* renamed from: a */
    public static /* synthetic */ IntFunction m177a(InterfaceC2461m interfaceC2461m) {
        if (interfaceC2461m == null) {
            return null;
        }
        return interfaceC2461m instanceof C2833S ? ((C2833S) interfaceC2461m).f1152a : new C2834T(interfaceC2461m);
    }

    @Override // java.util.function.IntFunction
    public /* synthetic */ Object apply(int i) {
        return this.f1153a.apply(i);
    }
}
