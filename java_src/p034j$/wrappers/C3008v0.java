package p034j$.wrappers;

import java.util.function.ObjLongConsumer;
import p034j$.util.function.InterfaceC2595w;
/* renamed from: j$.wrappers.v0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3008v0 implements ObjLongConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2595w f1208a;

    private /* synthetic */ C3008v0(InterfaceC2595w interfaceC2595w) {
        this.f1208a = interfaceC2595w;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjLongConsumer m110a(InterfaceC2595w interfaceC2595w) {
        if (interfaceC2595w == null) {
            return null;
        }
        return interfaceC2595w instanceof C3006u0 ? ((C3006u0) interfaceC2595w).f1206a : new C3008v0(interfaceC2595w);
    }

    @Override // java.util.function.ObjLongConsumer
    public /* synthetic */ void accept(Object obj, long j) {
        this.f1208a.accept(obj, j);
    }
}
