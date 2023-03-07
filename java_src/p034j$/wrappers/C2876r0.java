package p034j$.wrappers;

import java.util.function.ObjDoubleConsumer;
import p034j$.util.function.InterfaceC2469u;
/* renamed from: j$.wrappers.r0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2876r0 implements ObjDoubleConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2469u f1195a;

    private /* synthetic */ C2876r0(InterfaceC2469u interfaceC2469u) {
        this.f1195a = interfaceC2469u;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjDoubleConsumer m118a(InterfaceC2469u interfaceC2469u) {
        if (interfaceC2469u == null) {
            return null;
        }
        return interfaceC2469u instanceof C2874q0 ? ((C2874q0) interfaceC2469u).f1193a : new C2876r0(interfaceC2469u);
    }

    @Override // java.util.function.ObjDoubleConsumer
    public /* synthetic */ void accept(Object obj, double d) {
        this.f1195a.accept(obj, d);
    }
}
