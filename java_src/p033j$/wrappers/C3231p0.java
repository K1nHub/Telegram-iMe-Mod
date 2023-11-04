package p033j$.wrappers;

import java.util.function.ObjDoubleConsumer;
import p033j$.util.function.InterfaceC2834t;
/* renamed from: j$.wrappers.p0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3231p0 implements ObjDoubleConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2834t f1330a;

    private /* synthetic */ C3231p0(InterfaceC2834t interfaceC2834t) {
        this.f1330a = interfaceC2834t;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjDoubleConsumer m176a(InterfaceC2834t interfaceC2834t) {
        if (interfaceC2834t == null) {
            return null;
        }
        return interfaceC2834t instanceof C3229o0 ? ((C3229o0) interfaceC2834t).f1328a : new C3231p0(interfaceC2834t);
    }

    @Override // java.util.function.ObjDoubleConsumer
    public /* synthetic */ void accept(Object obj, double d) {
        this.f1330a.accept(obj, d);
    }
}
