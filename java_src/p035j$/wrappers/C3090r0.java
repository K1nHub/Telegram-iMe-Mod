package p035j$.wrappers;

import java.util.function.ObjDoubleConsumer;
import p035j$.util.function.InterfaceC2683u;
/* renamed from: j$.wrappers.r0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3090r0 implements ObjDoubleConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2683u f1206a;

    private /* synthetic */ C3090r0(InterfaceC2683u interfaceC2683u) {
        this.f1206a = interfaceC2683u;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjDoubleConsumer m112a(InterfaceC2683u interfaceC2683u) {
        if (interfaceC2683u == null) {
            return null;
        }
        return interfaceC2683u instanceof C3088q0 ? ((C3088q0) interfaceC2683u).f1204a : new C3090r0(interfaceC2683u);
    }

    @Override // java.util.function.ObjDoubleConsumer
    public /* synthetic */ void accept(Object obj, double d) {
        this.f1206a.accept(obj, d);
    }
}
