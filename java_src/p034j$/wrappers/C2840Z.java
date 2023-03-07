package p034j$.wrappers;

import java.util.function.IntToLongFunction;
import p034j$.util.function.InterfaceC2462n;
/* renamed from: j$.wrappers.Z */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2840Z implements IntToLongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2462n f1159a;

    private /* synthetic */ C2840Z(InterfaceC2462n interfaceC2462n) {
        this.f1159a = interfaceC2462n;
    }

    /* renamed from: a */
    public static /* synthetic */ IntToLongFunction m170a(InterfaceC2462n interfaceC2462n) {
        if (interfaceC2462n == null) {
            return null;
        }
        return interfaceC2462n instanceof C2839Y ? ((C2839Y) interfaceC2462n).f1158a : new C2840Z(interfaceC2462n);
    }

    @Override // java.util.function.IntToLongFunction
    public /* synthetic */ long applyAsLong(int i) {
        return this.f1159a.applyAsLong(i);
    }
}
