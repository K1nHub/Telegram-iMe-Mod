package p033j$.wrappers;

import java.util.function.IntToLongFunction;
import p033j$.util.function.InterfaceC2967n;
/* renamed from: j$.wrappers.Z */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3345Z implements IntToLongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2967n f1263a;

    private /* synthetic */ C3345Z(InterfaceC2967n interfaceC2967n) {
        this.f1263a = interfaceC2967n;
    }

    /* renamed from: a */
    public static /* synthetic */ IntToLongFunction m173a(InterfaceC2967n interfaceC2967n) {
        if (interfaceC2967n == null) {
            return null;
        }
        return interfaceC2967n instanceof C3344Y ? ((C3344Y) interfaceC2967n).f1262a : new C3345Z(interfaceC2967n);
    }

    @Override // java.util.function.IntToLongFunction
    public /* synthetic */ long applyAsLong(int i) {
        return this.f1263a.applyAsLong(i);
    }
}
