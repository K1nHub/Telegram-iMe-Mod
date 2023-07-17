package p033j$.wrappers;

import java.util.function.IntFunction;
import p033j$.util.function.InterfaceC2827m;
/* renamed from: j$.wrappers.T */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3200T implements IntFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2827m f1244a;

    private /* synthetic */ C3200T(InterfaceC2827m interfaceC2827m) {
        this.f1244a = interfaceC2827m;
    }

    /* renamed from: a */
    public static /* synthetic */ IntFunction m162a(InterfaceC2827m interfaceC2827m) {
        if (interfaceC2827m == null) {
            return null;
        }
        return interfaceC2827m instanceof C3199S ? ((C3199S) interfaceC2827m).f1243a : new C3200T(interfaceC2827m);
    }

    @Override // java.util.function.IntFunction
    public /* synthetic */ Object apply(int i) {
        return this.f1244a.apply(i);
    }
}
