package p034j$.wrappers;

import java.util.function.IntFunction;
import p034j$.util.function.InterfaceC2599m;
/* renamed from: j$.wrappers.T */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2972T implements IntFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2599m f1159a;

    private /* synthetic */ C2972T(InterfaceC2599m interfaceC2599m) {
        this.f1159a = interfaceC2599m;
    }

    /* renamed from: a */
    public static /* synthetic */ IntFunction m176a(InterfaceC2599m interfaceC2599m) {
        if (interfaceC2599m == null) {
            return null;
        }
        return interfaceC2599m instanceof C2971S ? ((C2971S) interfaceC2599m).f1158a : new C2972T(interfaceC2599m);
    }

    @Override // java.util.function.IntFunction
    public /* synthetic */ Object apply(int i) {
        return this.f1159a.apply(i);
    }
}
