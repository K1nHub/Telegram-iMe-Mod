package p033j$.wrappers;

import java.util.function.ObjDoubleConsumer;
import p033j$.util.function.InterfaceC2835u;
/* renamed from: j$.wrappers.r0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3242r0 implements ObjDoubleConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2835u f1289a;

    private /* synthetic */ C3242r0(InterfaceC2835u interfaceC2835u) {
        this.f1289a = interfaceC2835u;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjDoubleConsumer m121a(InterfaceC2835u interfaceC2835u) {
        if (interfaceC2835u == null) {
            return null;
        }
        return interfaceC2835u instanceof C3240q0 ? ((C3240q0) interfaceC2835u).f1287a : new C3242r0(interfaceC2835u);
    }

    @Override // java.util.function.ObjDoubleConsumer
    public /* synthetic */ void accept(Object obj, double d) {
        this.f1289a.accept(obj, d);
    }
}
