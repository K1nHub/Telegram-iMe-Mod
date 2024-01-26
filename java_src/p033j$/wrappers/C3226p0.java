package p033j$.wrappers;

import java.util.function.ObjDoubleConsumer;
import p033j$.util.function.InterfaceC2829t;
/* renamed from: j$.wrappers.p0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3226p0 implements ObjDoubleConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2829t f1330a;

    private /* synthetic */ C3226p0(InterfaceC2829t interfaceC2829t) {
        this.f1330a = interfaceC2829t;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjDoubleConsumer m179a(InterfaceC2829t interfaceC2829t) {
        if (interfaceC2829t == null) {
            return null;
        }
        return interfaceC2829t instanceof C3224o0 ? ((C3224o0) interfaceC2829t).f1328a : new C3226p0(interfaceC2829t);
    }

    @Override // java.util.function.ObjDoubleConsumer
    public /* synthetic */ void accept(Object obj, double d) {
        this.f1330a.accept(obj, d);
    }
}
