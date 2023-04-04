package p035j$.wrappers;

import java.util.function.IntToLongFunction;
import p035j$.util.function.InterfaceC2676n;
/* renamed from: j$.wrappers.Z */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3054Z implements IntToLongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2676n f1170a;

    private /* synthetic */ C3054Z(InterfaceC2676n interfaceC2676n) {
        this.f1170a = interfaceC2676n;
    }

    /* renamed from: a */
    public static /* synthetic */ IntToLongFunction m164a(InterfaceC2676n interfaceC2676n) {
        if (interfaceC2676n == null) {
            return null;
        }
        return interfaceC2676n instanceof C3053Y ? ((C3053Y) interfaceC2676n).f1169a : new C3054Z(interfaceC2676n);
    }

    @Override // java.util.function.IntToLongFunction
    public /* synthetic */ long applyAsLong(int i) {
        return this.f1170a.applyAsLong(i);
    }
}
