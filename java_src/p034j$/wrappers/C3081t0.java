package p034j$.wrappers;

import java.util.function.ObjIntConsumer;
import p034j$.util.function.InterfaceC2671v;
/* renamed from: j$.wrappers.t0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3081t0 implements ObjIntConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2671v f1205a;

    private /* synthetic */ C3081t0(InterfaceC2671v interfaceC2671v) {
        this.f1205a = interfaceC2671v;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjIntConsumer m94a(InterfaceC2671v interfaceC2671v) {
        if (interfaceC2671v == null) {
            return null;
        }
        return interfaceC2671v instanceof C3079s0 ? ((C3079s0) interfaceC2671v).f1203a : new C3081t0(interfaceC2671v);
    }

    @Override // java.util.function.ObjIntConsumer
    public /* synthetic */ void accept(Object obj, int i) {
        this.f1205a.accept(obj, i);
    }
}
