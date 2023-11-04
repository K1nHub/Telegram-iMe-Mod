package p033j$.wrappers;

import java.util.function.ObjDoubleConsumer;
import p033j$.util.function.InterfaceC2834t;
/* renamed from: j$.wrappers.o0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3229o0 implements InterfaceC2834t {

    /* renamed from: a */
    final /* synthetic */ ObjDoubleConsumer f1328a;

    private /* synthetic */ C3229o0(ObjDoubleConsumer objDoubleConsumer) {
        this.f1328a = objDoubleConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2834t m178a(ObjDoubleConsumer objDoubleConsumer) {
        if (objDoubleConsumer == null) {
            return null;
        }
        return objDoubleConsumer instanceof C3231p0 ? ((C3231p0) objDoubleConsumer).f1330a : new C3229o0(objDoubleConsumer);
    }

    @Override // p033j$.util.function.InterfaceC2834t
    public /* synthetic */ void accept(Object obj, double d) {
        this.f1328a.accept(obj, d);
    }
}
