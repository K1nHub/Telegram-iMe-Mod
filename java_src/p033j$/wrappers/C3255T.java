package p033j$.wrappers;

import java.util.function.IntFunction;
import p033j$.util.function.InterfaceC2882m;
/* renamed from: j$.wrappers.T */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3255T implements IntFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2882m f1248a;

    private /* synthetic */ C3255T(InterfaceC2882m interfaceC2882m) {
        this.f1248a = interfaceC2882m;
    }

    /* renamed from: a */
    public static /* synthetic */ IntFunction m180a(InterfaceC2882m interfaceC2882m) {
        if (interfaceC2882m == null) {
            return null;
        }
        return interfaceC2882m instanceof C3254S ? ((C3254S) interfaceC2882m).f1247a : new C3255T(interfaceC2882m);
    }

    @Override // java.util.function.IntFunction
    public /* synthetic */ Object apply(int i) {
        return this.f1248a.apply(i);
    }
}
