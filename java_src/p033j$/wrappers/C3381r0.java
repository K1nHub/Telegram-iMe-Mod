package p033j$.wrappers;

import java.util.function.ObjDoubleConsumer;
import p033j$.util.function.InterfaceC2974u;
/* renamed from: j$.wrappers.r0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3381r0 implements ObjDoubleConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2974u f1299a;

    private /* synthetic */ C3381r0(InterfaceC2974u interfaceC2974u) {
        this.f1299a = interfaceC2974u;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjDoubleConsumer m121a(InterfaceC2974u interfaceC2974u) {
        if (interfaceC2974u == null) {
            return null;
        }
        return interfaceC2974u instanceof C3379q0 ? ((C3379q0) interfaceC2974u).f1297a : new C3381r0(interfaceC2974u);
    }

    @Override // java.util.function.ObjDoubleConsumer
    public /* synthetic */ void accept(Object obj, double d) {
        this.f1299a.accept(obj, d);
    }
}
