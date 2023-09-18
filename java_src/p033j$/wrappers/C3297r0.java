package p033j$.wrappers;

import java.util.function.ObjDoubleConsumer;
import p033j$.util.function.InterfaceC2890u;
/* renamed from: j$.wrappers.r0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3297r0 implements ObjDoubleConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2890u f1290a;

    private /* synthetic */ C3297r0(InterfaceC2890u interfaceC2890u) {
        this.f1290a = interfaceC2890u;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjDoubleConsumer m121a(InterfaceC2890u interfaceC2890u) {
        if (interfaceC2890u == null) {
            return null;
        }
        return interfaceC2890u instanceof C3295q0 ? ((C3295q0) interfaceC2890u).f1288a : new C3297r0(interfaceC2890u);
    }

    @Override // java.util.function.ObjDoubleConsumer
    public /* synthetic */ void accept(Object obj, double d) {
        this.f1290a.accept(obj, d);
    }
}
