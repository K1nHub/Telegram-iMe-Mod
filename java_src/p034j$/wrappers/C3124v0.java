package p034j$.wrappers;

import java.util.function.ObjLongConsumer;
import p034j$.util.function.InterfaceC2711w;
/* renamed from: j$.wrappers.v0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3124v0 implements ObjLongConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2711w f1212a;

    private /* synthetic */ C3124v0(InterfaceC2711w interfaceC2711w) {
        this.f1212a = interfaceC2711w;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjLongConsumer m95a(InterfaceC2711w interfaceC2711w) {
        if (interfaceC2711w == null) {
            return null;
        }
        return interfaceC2711w instanceof C3122u0 ? ((C3122u0) interfaceC2711w).f1210a : new C3124v0(interfaceC2711w);
    }

    @Override // java.util.function.ObjLongConsumer
    public /* synthetic */ void accept(Object obj, long j) {
        this.f1212a.accept(obj, j);
    }
}
