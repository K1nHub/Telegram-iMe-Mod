package p033j$.wrappers;

import java.util.function.IntToLongFunction;
import p033j$.util.function.InterfaceC2827m;
/* renamed from: j$.wrappers.X */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3197X implements IntToLongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2827m f1296a;

    private /* synthetic */ C3197X(InterfaceC2827m interfaceC2827m) {
        this.f1296a = interfaceC2827m;
    }

    /* renamed from: a */
    public static /* synthetic */ IntToLongFunction m225a(InterfaceC2827m interfaceC2827m) {
        if (interfaceC2827m == null) {
            return null;
        }
        return interfaceC2827m instanceof C3196W ? ((C3196W) interfaceC2827m).f1295a : new C3197X(interfaceC2827m);
    }

    @Override // java.util.function.IntToLongFunction
    public /* synthetic */ long applyAsLong(int i) {
        return this.f1296a.applyAsLong(i);
    }
}
