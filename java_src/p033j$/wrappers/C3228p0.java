package p033j$.wrappers;

import java.util.function.ObjDoubleConsumer;
import p033j$.util.function.InterfaceC2831t;
/* renamed from: j$.wrappers.p0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3228p0 implements ObjDoubleConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2831t f1330a;

    private /* synthetic */ C3228p0(InterfaceC2831t interfaceC2831t) {
        this.f1330a = interfaceC2831t;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjDoubleConsumer m176a(InterfaceC2831t interfaceC2831t) {
        if (interfaceC2831t == null) {
            return null;
        }
        return interfaceC2831t instanceof C3226o0 ? ((C3226o0) interfaceC2831t).f1328a : new C3228p0(interfaceC2831t);
    }

    @Override // java.util.function.ObjDoubleConsumer
    public /* synthetic */ void accept(Object obj, double d) {
        this.f1330a.accept(obj, d);
    }
}
