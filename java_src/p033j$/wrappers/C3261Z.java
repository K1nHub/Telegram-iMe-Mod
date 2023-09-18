package p033j$.wrappers;

import java.util.function.IntToLongFunction;
import p033j$.util.function.InterfaceC2883n;
/* renamed from: j$.wrappers.Z */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3261Z implements IntToLongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2883n f1254a;

    private /* synthetic */ C3261Z(InterfaceC2883n interfaceC2883n) {
        this.f1254a = interfaceC2883n;
    }

    /* renamed from: a */
    public static /* synthetic */ IntToLongFunction m173a(InterfaceC2883n interfaceC2883n) {
        if (interfaceC2883n == null) {
            return null;
        }
        return interfaceC2883n instanceof C3260Y ? ((C3260Y) interfaceC2883n).f1253a : new C3261Z(interfaceC2883n);
    }

    @Override // java.util.function.IntToLongFunction
    public /* synthetic */ long applyAsLong(int i) {
        return this.f1254a.applyAsLong(i);
    }
}
