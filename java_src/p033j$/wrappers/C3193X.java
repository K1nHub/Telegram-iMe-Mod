package p033j$.wrappers;

import java.util.function.IntToLongFunction;
import p033j$.util.function.InterfaceC2823m;
/* renamed from: j$.wrappers.X */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3193X implements IntToLongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2823m f1296a;

    private /* synthetic */ C3193X(InterfaceC2823m interfaceC2823m) {
        this.f1296a = interfaceC2823m;
    }

    /* renamed from: a */
    public static /* synthetic */ IntToLongFunction m224a(InterfaceC2823m interfaceC2823m) {
        if (interfaceC2823m == null) {
            return null;
        }
        return interfaceC2823m instanceof C3192W ? ((C3192W) interfaceC2823m).f1295a : new C3193X(interfaceC2823m);
    }

    @Override // java.util.function.IntToLongFunction
    public /* synthetic */ long applyAsLong(int i) {
        return this.f1296a.applyAsLong(i);
    }
}
