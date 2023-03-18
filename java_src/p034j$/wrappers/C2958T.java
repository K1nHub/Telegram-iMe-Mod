package p034j$.wrappers;

import java.util.function.IntFunction;
import p034j$.util.function.InterfaceC2585m;
/* renamed from: j$.wrappers.T */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2958T implements IntFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2585m f1158a;

    private /* synthetic */ C2958T(InterfaceC2585m interfaceC2585m) {
        this.f1158a = interfaceC2585m;
    }

    /* renamed from: a */
    public static /* synthetic */ IntFunction m177a(InterfaceC2585m interfaceC2585m) {
        if (interfaceC2585m == null) {
            return null;
        }
        return interfaceC2585m instanceof C2957S ? ((C2957S) interfaceC2585m).f1157a : new C2958T(interfaceC2585m);
    }

    @Override // java.util.function.IntFunction
    public /* synthetic */ Object apply(int i) {
        return this.f1158a.apply(i);
    }
}
