package p033j$.wrappers;

import java.util.function.ObjLongConsumer;
import p033j$.util.function.InterfaceC2837w;
/* renamed from: j$.wrappers.v0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3250v0 implements ObjLongConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2837w f1297a;

    private /* synthetic */ C3250v0(InterfaceC2837w interfaceC2837w) {
        this.f1297a = interfaceC2837w;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjLongConsumer m113a(InterfaceC2837w interfaceC2837w) {
        if (interfaceC2837w == null) {
            return null;
        }
        return interfaceC2837w instanceof C3248u0 ? ((C3248u0) interfaceC2837w).f1295a : new C3250v0(interfaceC2837w);
    }

    @Override // java.util.function.ObjLongConsumer
    public /* synthetic */ void accept(Object obj, long j) {
        this.f1297a.accept(obj, j);
    }
}
