package p034j$.wrappers;

import java.util.function.IntToLongFunction;
import p034j$.util.function.InterfaceC2663n;
/* renamed from: j$.wrappers.Z */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3041Z implements IntToLongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2663n f1165a;

    private /* synthetic */ C3041Z(InterfaceC2663n interfaceC2663n) {
        this.f1165a = interfaceC2663n;
    }

    /* renamed from: a */
    public static /* synthetic */ IntToLongFunction m150a(InterfaceC2663n interfaceC2663n) {
        if (interfaceC2663n == null) {
            return null;
        }
        return interfaceC2663n instanceof C3040Y ? ((C3040Y) interfaceC2663n).f1164a : new C3041Z(interfaceC2663n);
    }

    @Override // java.util.function.IntToLongFunction
    public /* synthetic */ long applyAsLong(int i) {
        return this.f1165a.applyAsLong(i);
    }
}
