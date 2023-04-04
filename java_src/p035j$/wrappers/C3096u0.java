package p035j$.wrappers;

import java.util.function.ObjLongConsumer;
import p035j$.util.function.InterfaceC2685w;
/* renamed from: j$.wrappers.u0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3096u0 implements InterfaceC2685w {

    /* renamed from: a */
    final /* synthetic */ ObjLongConsumer f1212a;

    private /* synthetic */ C3096u0(ObjLongConsumer objLongConsumer) {
        this.f1212a = objLongConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2685w m106a(ObjLongConsumer objLongConsumer) {
        if (objLongConsumer == null) {
            return null;
        }
        return objLongConsumer instanceof C3098v0 ? ((C3098v0) objLongConsumer).f1214a : new C3096u0(objLongConsumer);
    }

    @Override // p035j$.util.function.InterfaceC2685w
    public /* synthetic */ void accept(Object obj, long j) {
        this.f1212a.accept(obj, j);
    }
}
