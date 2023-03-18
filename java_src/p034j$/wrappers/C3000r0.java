package p034j$.wrappers;

import java.util.function.ObjDoubleConsumer;
import p034j$.util.function.InterfaceC2593u;
/* renamed from: j$.wrappers.r0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3000r0 implements ObjDoubleConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2593u f1200a;

    private /* synthetic */ C3000r0(InterfaceC2593u interfaceC2593u) {
        this.f1200a = interfaceC2593u;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjDoubleConsumer m118a(InterfaceC2593u interfaceC2593u) {
        if (interfaceC2593u == null) {
            return null;
        }
        return interfaceC2593u instanceof C2998q0 ? ((C2998q0) interfaceC2593u).f1198a : new C3000r0(interfaceC2593u);
    }

    @Override // java.util.function.ObjDoubleConsumer
    public /* synthetic */ void accept(Object obj, double d) {
        this.f1200a.accept(obj, d);
    }
}
