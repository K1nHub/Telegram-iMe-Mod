package p034j$.wrappers;

import java.util.function.ObjDoubleConsumer;
import p034j$.util.function.InterfaceC2670u;
/* renamed from: j$.wrappers.r0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3077r0 implements ObjDoubleConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2670u f1201a;

    private /* synthetic */ C3077r0(InterfaceC2670u interfaceC2670u) {
        this.f1201a = interfaceC2670u;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjDoubleConsumer m98a(InterfaceC2670u interfaceC2670u) {
        if (interfaceC2670u == null) {
            return null;
        }
        return interfaceC2670u instanceof C3075q0 ? ((C3075q0) interfaceC2670u).f1199a : new C3077r0(interfaceC2670u);
    }

    @Override // java.util.function.ObjDoubleConsumer
    public /* synthetic */ void accept(Object obj, double d) {
        this.f1201a.accept(obj, d);
    }
}
