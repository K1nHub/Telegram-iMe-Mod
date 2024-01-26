package p033j$.wrappers;

import java.util.function.ObjIntConsumer;
import p033j$.util.function.InterfaceC2830u;
/* renamed from: j$.wrappers.r0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3230r0 implements ObjIntConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2830u f1334a;

    private /* synthetic */ C3230r0(InterfaceC2830u interfaceC2830u) {
        this.f1334a = interfaceC2830u;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjIntConsumer m175a(InterfaceC2830u interfaceC2830u) {
        if (interfaceC2830u == null) {
            return null;
        }
        return interfaceC2830u instanceof C3228q0 ? ((C3228q0) interfaceC2830u).f1332a : new C3230r0(interfaceC2830u);
    }

    @Override // java.util.function.ObjIntConsumer
    public /* synthetic */ void accept(Object obj, int i) {
        this.f1334a.accept(obj, i);
    }
}
