package p033j$.wrappers;

import java.util.function.ObjIntConsumer;
import p033j$.util.function.InterfaceC2831u;
/* renamed from: j$.wrappers.q0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3229q0 implements InterfaceC2831u {

    /* renamed from: a */
    final /* synthetic */ ObjIntConsumer f1332a;

    private /* synthetic */ C3229q0(ObjIntConsumer objIntConsumer) {
        this.f1332a = objIntConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2831u m172a(ObjIntConsumer objIntConsumer) {
        if (objIntConsumer == null) {
            return null;
        }
        return objIntConsumer instanceof C3231r0 ? ((C3231r0) objIntConsumer).f1334a : new C3229q0(objIntConsumer);
    }

    @Override // p033j$.util.function.InterfaceC2831u
    public /* synthetic */ void accept(Object obj, int i) {
        this.f1332a.accept(obj, i);
    }
}
