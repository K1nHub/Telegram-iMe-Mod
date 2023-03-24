package p034j$.wrappers;

import java.util.function.ObjIntConsumer;
import p034j$.util.function.InterfaceC2608v;
/* renamed from: j$.wrappers.t0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3018t0 implements ObjIntConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2608v f1205a;

    private /* synthetic */ C3018t0(InterfaceC2608v interfaceC2608v) {
        this.f1205a = interfaceC2608v;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjIntConsumer m113a(InterfaceC2608v interfaceC2608v) {
        if (interfaceC2608v == null) {
            return null;
        }
        return interfaceC2608v instanceof C3016s0 ? ((C3016s0) interfaceC2608v).f1203a : new C3018t0(interfaceC2608v);
    }

    @Override // java.util.function.ObjIntConsumer
    public /* synthetic */ void accept(Object obj, int i) {
        this.f1205a.accept(obj, i);
    }
}
