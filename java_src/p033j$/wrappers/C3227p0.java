package p033j$.wrappers;

import java.util.function.ObjDoubleConsumer;
import p033j$.util.function.InterfaceC2830t;
/* renamed from: j$.wrappers.p0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3227p0 implements ObjDoubleConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2830t f1330a;

    private /* synthetic */ C3227p0(InterfaceC2830t interfaceC2830t) {
        this.f1330a = interfaceC2830t;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjDoubleConsumer m175a(InterfaceC2830t interfaceC2830t) {
        if (interfaceC2830t == null) {
            return null;
        }
        return interfaceC2830t instanceof C3225o0 ? ((C3225o0) interfaceC2830t).f1328a : new C3227p0(interfaceC2830t);
    }

    @Override // java.util.function.ObjDoubleConsumer
    public /* synthetic */ void accept(Object obj, double d) {
        this.f1330a.accept(obj, d);
    }
}
