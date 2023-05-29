package p034j$.wrappers;

import java.util.function.ObjDoubleConsumer;
import p034j$.util.function.InterfaceC2714u;
/* renamed from: j$.wrappers.r0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3121r0 implements ObjDoubleConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2714u f1204a;

    private /* synthetic */ C3121r0(InterfaceC2714u interfaceC2714u) {
        this.f1204a = interfaceC2714u;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjDoubleConsumer m103a(InterfaceC2714u interfaceC2714u) {
        if (interfaceC2714u == null) {
            return null;
        }
        return interfaceC2714u instanceof C3119q0 ? ((C3119q0) interfaceC2714u).f1202a : new C3121r0(interfaceC2714u);
    }

    @Override // java.util.function.ObjDoubleConsumer
    public /* synthetic */ void accept(Object obj, double d) {
        this.f1204a.accept(obj, d);
    }
}
