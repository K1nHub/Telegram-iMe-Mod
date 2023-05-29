package p034j$.wrappers;

import java.util.function.ObjDoubleConsumer;
import p034j$.util.function.InterfaceC2709u;
/* renamed from: j$.wrappers.r0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3116r0 implements ObjDoubleConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2709u f1204a;

    private /* synthetic */ C3116r0(InterfaceC2709u interfaceC2709u) {
        this.f1204a = interfaceC2709u;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjDoubleConsumer m103a(InterfaceC2709u interfaceC2709u) {
        if (interfaceC2709u == null) {
            return null;
        }
        return interfaceC2709u instanceof C3114q0 ? ((C3114q0) interfaceC2709u).f1202a : new C3116r0(interfaceC2709u);
    }

    @Override // java.util.function.ObjDoubleConsumer
    public /* synthetic */ void accept(Object obj, double d) {
        this.f1204a.accept(obj, d);
    }
}
