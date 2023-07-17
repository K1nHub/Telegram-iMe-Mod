package p033j$.wrappers;

import java.util.function.ObjLongConsumer;
import p033j$.util.function.InterfaceC2837w;
/* renamed from: j$.wrappers.u0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3248u0 implements InterfaceC2837w {

    /* renamed from: a */
    final /* synthetic */ ObjLongConsumer f1292a;

    private /* synthetic */ C3248u0(ObjLongConsumer objLongConsumer) {
        this.f1292a = objLongConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2837w m97a(ObjLongConsumer objLongConsumer) {
        if (objLongConsumer == null) {
            return null;
        }
        return objLongConsumer instanceof C3250v0 ? ((C3250v0) objLongConsumer).f1294a : new C3248u0(objLongConsumer);
    }

    @Override // p033j$.util.function.InterfaceC2837w
    public /* synthetic */ void accept(Object obj, long j) {
        this.f1292a.accept(obj, j);
    }
}
