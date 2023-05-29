package p034j$.wrappers;

import java.util.function.ObjLongConsumer;
import p034j$.util.function.InterfaceC2716w;
/* renamed from: j$.wrappers.v0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3129v0 implements ObjLongConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2716w f1212a;

    private /* synthetic */ C3129v0(InterfaceC2716w interfaceC2716w) {
        this.f1212a = interfaceC2716w;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjLongConsumer m95a(InterfaceC2716w interfaceC2716w) {
        if (interfaceC2716w == null) {
            return null;
        }
        return interfaceC2716w instanceof C3127u0 ? ((C3127u0) interfaceC2716w).f1210a : new C3129v0(interfaceC2716w);
    }

    @Override // java.util.function.ObjLongConsumer
    public /* synthetic */ void accept(Object obj, long j) {
        this.f1212a.accept(obj, j);
    }
}
