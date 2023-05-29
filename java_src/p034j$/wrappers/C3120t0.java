package p034j$.wrappers;

import java.util.function.ObjIntConsumer;
import p034j$.util.function.InterfaceC2710v;
/* renamed from: j$.wrappers.t0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3120t0 implements ObjIntConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2710v f1208a;

    private /* synthetic */ C3120t0(InterfaceC2710v interfaceC2710v) {
        this.f1208a = interfaceC2710v;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjIntConsumer m99a(InterfaceC2710v interfaceC2710v) {
        if (interfaceC2710v == null) {
            return null;
        }
        return interfaceC2710v instanceof C3118s0 ? ((C3118s0) interfaceC2710v).f1206a : new C3120t0(interfaceC2710v);
    }

    @Override // java.util.function.ObjIntConsumer
    public /* synthetic */ void accept(Object obj, int i) {
        this.f1208a.accept(obj, i);
    }
}
