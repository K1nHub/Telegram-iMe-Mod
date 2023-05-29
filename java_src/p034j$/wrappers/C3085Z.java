package p034j$.wrappers;

import java.util.function.IntToLongFunction;
import p034j$.util.function.InterfaceC2707n;
/* renamed from: j$.wrappers.Z */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3085Z implements IntToLongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2707n f1168a;

    private /* synthetic */ C3085Z(InterfaceC2707n interfaceC2707n) {
        this.f1168a = interfaceC2707n;
    }

    /* renamed from: a */
    public static /* synthetic */ IntToLongFunction m155a(InterfaceC2707n interfaceC2707n) {
        if (interfaceC2707n == null) {
            return null;
        }
        return interfaceC2707n instanceof C3084Y ? ((C3084Y) interfaceC2707n).f1167a : new C3085Z(interfaceC2707n);
    }

    @Override // java.util.function.IntToLongFunction
    public /* synthetic */ long applyAsLong(int i) {
        return this.f1168a.applyAsLong(i);
    }
}
