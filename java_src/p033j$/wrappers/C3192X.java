package p033j$.wrappers;

import java.util.function.IntToLongFunction;
import p033j$.util.function.InterfaceC2822m;
/* renamed from: j$.wrappers.X */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3192X implements IntToLongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2822m f1296a;

    private /* synthetic */ C3192X(InterfaceC2822m interfaceC2822m) {
        this.f1296a = interfaceC2822m;
    }

    /* renamed from: a */
    public static /* synthetic */ IntToLongFunction m228a(InterfaceC2822m interfaceC2822m) {
        if (interfaceC2822m == null) {
            return null;
        }
        return interfaceC2822m instanceof C3191W ? ((C3191W) interfaceC2822m).f1295a : new C3192X(interfaceC2822m);
    }

    @Override // java.util.function.IntToLongFunction
    public /* synthetic */ long applyAsLong(int i) {
        return this.f1296a.applyAsLong(i);
    }
}
