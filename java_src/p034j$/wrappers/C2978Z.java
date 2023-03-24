package p034j$.wrappers;

import java.util.function.IntToLongFunction;
import p034j$.util.function.InterfaceC2600n;
/* renamed from: j$.wrappers.Z */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2978Z implements IntToLongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2600n f1165a;

    private /* synthetic */ C2978Z(InterfaceC2600n interfaceC2600n) {
        this.f1165a = interfaceC2600n;
    }

    /* renamed from: a */
    public static /* synthetic */ IntToLongFunction m169a(InterfaceC2600n interfaceC2600n) {
        if (interfaceC2600n == null) {
            return null;
        }
        return interfaceC2600n instanceof C2977Y ? ((C2977Y) interfaceC2600n).f1164a : new C2978Z(interfaceC2600n);
    }

    @Override // java.util.function.IntToLongFunction
    public /* synthetic */ long applyAsLong(int i) {
        return this.f1165a.applyAsLong(i);
    }
}
