package p033j$.wrappers;

import java.util.function.ObjIntConsumer;
import p033j$.util.function.InterfaceC2836v;
/* renamed from: j$.wrappers.t0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3246t0 implements ObjIntConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2836v f1293a;

    private /* synthetic */ C3246t0(InterfaceC2836v interfaceC2836v) {
        this.f1293a = interfaceC2836v;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjIntConsumer m117a(InterfaceC2836v interfaceC2836v) {
        if (interfaceC2836v == null) {
            return null;
        }
        return interfaceC2836v instanceof C3244s0 ? ((C3244s0) interfaceC2836v).f1291a : new C3246t0(interfaceC2836v);
    }

    @Override // java.util.function.ObjIntConsumer
    public /* synthetic */ void accept(Object obj, int i) {
        this.f1293a.accept(obj, i);
    }
}
