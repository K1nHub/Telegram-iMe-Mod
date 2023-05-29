package p034j$.wrappers;

import java.util.function.IntToLongFunction;
import p034j$.util.function.InterfaceC2702n;
/* renamed from: j$.wrappers.Z */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3080Z implements IntToLongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2702n f1168a;

    private /* synthetic */ C3080Z(InterfaceC2702n interfaceC2702n) {
        this.f1168a = interfaceC2702n;
    }

    /* renamed from: a */
    public static /* synthetic */ IntToLongFunction m155a(InterfaceC2702n interfaceC2702n) {
        if (interfaceC2702n == null) {
            return null;
        }
        return interfaceC2702n instanceof C3079Y ? ((C3079Y) interfaceC2702n).f1167a : new C3080Z(interfaceC2702n);
    }

    @Override // java.util.function.IntToLongFunction
    public /* synthetic */ long applyAsLong(int i) {
        return this.f1168a.applyAsLong(i);
    }
}
