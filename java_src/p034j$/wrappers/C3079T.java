package p034j$.wrappers;

import java.util.function.IntFunction;
import p034j$.util.function.InterfaceC2706m;
/* renamed from: j$.wrappers.T */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3079T implements IntFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2706m f1162a;

    private /* synthetic */ C3079T(InterfaceC2706m interfaceC2706m) {
        this.f1162a = interfaceC2706m;
    }

    /* renamed from: a */
    public static /* synthetic */ IntFunction m162a(InterfaceC2706m interfaceC2706m) {
        if (interfaceC2706m == null) {
            return null;
        }
        return interfaceC2706m instanceof C3078S ? ((C3078S) interfaceC2706m).f1161a : new C3079T(interfaceC2706m);
    }

    @Override // java.util.function.IntFunction
    public /* synthetic */ Object apply(int i) {
        return this.f1162a.apply(i);
    }
}
