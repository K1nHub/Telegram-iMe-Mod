package p033j$.wrappers;

import java.util.function.IntFunction;
import p033j$.util.function.InterfaceC2966m;
/* renamed from: j$.wrappers.T */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3339T implements IntFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2966m f1257a;

    private /* synthetic */ C3339T(InterfaceC2966m interfaceC2966m) {
        this.f1257a = interfaceC2966m;
    }

    /* renamed from: a */
    public static /* synthetic */ IntFunction m180a(InterfaceC2966m interfaceC2966m) {
        if (interfaceC2966m == null) {
            return null;
        }
        return interfaceC2966m instanceof C3338S ? ((C3338S) interfaceC2966m).f1256a : new C3339T(interfaceC2966m);
    }

    @Override // java.util.function.IntFunction
    public /* synthetic */ Object apply(int i) {
        return this.f1257a.apply(i);
    }
}
