package p034j$.wrappers;

import java.util.function.ObjDoubleConsumer;
import p034j$.util.function.InterfaceC2607u;
/* renamed from: j$.wrappers.r0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3014r0 implements ObjDoubleConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2607u f1201a;

    private /* synthetic */ C3014r0(InterfaceC2607u interfaceC2607u) {
        this.f1201a = interfaceC2607u;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjDoubleConsumer m117a(InterfaceC2607u interfaceC2607u) {
        if (interfaceC2607u == null) {
            return null;
        }
        return interfaceC2607u instanceof C3012q0 ? ((C3012q0) interfaceC2607u).f1199a : new C3014r0(interfaceC2607u);
    }

    @Override // java.util.function.ObjDoubleConsumer
    public /* synthetic */ void accept(Object obj, double d) {
        this.f1201a.accept(obj, d);
    }
}
