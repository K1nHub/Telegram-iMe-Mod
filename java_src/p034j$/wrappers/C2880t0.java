package p034j$.wrappers;

import java.util.function.ObjIntConsumer;
import p034j$.util.function.InterfaceC2470v;
/* renamed from: j$.wrappers.t0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2880t0 implements ObjIntConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2470v f1199a;

    private /* synthetic */ C2880t0(InterfaceC2470v interfaceC2470v) {
        this.f1199a = interfaceC2470v;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjIntConsumer m114a(InterfaceC2470v interfaceC2470v) {
        if (interfaceC2470v == null) {
            return null;
        }
        return interfaceC2470v instanceof C2878s0 ? ((C2878s0) interfaceC2470v).f1197a : new C2880t0(interfaceC2470v);
    }

    @Override // java.util.function.ObjIntConsumer
    public /* synthetic */ void accept(Object obj, int i) {
        this.f1199a.accept(obj, i);
    }
}
