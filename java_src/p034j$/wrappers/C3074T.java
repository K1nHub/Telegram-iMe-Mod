package p034j$.wrappers;

import java.util.function.IntFunction;
import p034j$.util.function.InterfaceC2701m;
/* renamed from: j$.wrappers.T */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3074T implements IntFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2701m f1162a;

    private /* synthetic */ C3074T(InterfaceC2701m interfaceC2701m) {
        this.f1162a = interfaceC2701m;
    }

    /* renamed from: a */
    public static /* synthetic */ IntFunction m162a(InterfaceC2701m interfaceC2701m) {
        if (interfaceC2701m == null) {
            return null;
        }
        return interfaceC2701m instanceof C3073S ? ((C3073S) interfaceC2701m).f1161a : new C3074T(interfaceC2701m);
    }

    @Override // java.util.function.IntFunction
    public /* synthetic */ Object apply(int i) {
        return this.f1162a.apply(i);
    }
}
