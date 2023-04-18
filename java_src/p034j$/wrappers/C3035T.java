package p034j$.wrappers;

import java.util.function.IntFunction;
import p034j$.util.function.InterfaceC2662m;
/* renamed from: j$.wrappers.T */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3035T implements IntFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2662m f1159a;

    private /* synthetic */ C3035T(InterfaceC2662m interfaceC2662m) {
        this.f1159a = interfaceC2662m;
    }

    /* renamed from: a */
    public static /* synthetic */ IntFunction m157a(InterfaceC2662m interfaceC2662m) {
        if (interfaceC2662m == null) {
            return null;
        }
        return interfaceC2662m instanceof C3034S ? ((C3034S) interfaceC2662m).f1158a : new C3035T(interfaceC2662m);
    }

    @Override // java.util.function.IntFunction
    public /* synthetic */ Object apply(int i) {
        return this.f1159a.apply(i);
    }
}
