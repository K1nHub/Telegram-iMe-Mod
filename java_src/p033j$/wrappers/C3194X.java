package p033j$.wrappers;

import java.util.function.IntToLongFunction;
import p033j$.util.function.InterfaceC2824m;
/* renamed from: j$.wrappers.X */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3194X implements IntToLongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2824m f1296a;

    private /* synthetic */ C3194X(InterfaceC2824m interfaceC2824m) {
        this.f1296a = interfaceC2824m;
    }

    /* renamed from: a */
    public static /* synthetic */ IntToLongFunction m225a(InterfaceC2824m interfaceC2824m) {
        if (interfaceC2824m == null) {
            return null;
        }
        return interfaceC2824m instanceof C3193W ? ((C3193W) interfaceC2824m).f1295a : new C3194X(interfaceC2824m);
    }

    @Override // java.util.function.IntToLongFunction
    public /* synthetic */ long applyAsLong(int i) {
        return this.f1296a.applyAsLong(i);
    }
}
