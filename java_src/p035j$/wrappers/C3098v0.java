package p035j$.wrappers;

import java.util.function.ObjLongConsumer;
import p035j$.util.function.InterfaceC2685w;
/* renamed from: j$.wrappers.v0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3098v0 implements ObjLongConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2685w f1214a;

    private /* synthetic */ C3098v0(InterfaceC2685w interfaceC2685w) {
        this.f1214a = interfaceC2685w;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjLongConsumer m104a(InterfaceC2685w interfaceC2685w) {
        if (interfaceC2685w == null) {
            return null;
        }
        return interfaceC2685w instanceof C3096u0 ? ((C3096u0) interfaceC2685w).f1212a : new C3098v0(interfaceC2685w);
    }

    @Override // java.util.function.ObjLongConsumer
    public /* synthetic */ void accept(Object obj, long j) {
        this.f1214a.accept(obj, j);
    }
}
