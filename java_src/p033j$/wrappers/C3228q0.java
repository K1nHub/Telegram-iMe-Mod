package p033j$.wrappers;

import java.util.function.ObjIntConsumer;
import p033j$.util.function.InterfaceC2830u;
/* renamed from: j$.wrappers.q0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3228q0 implements InterfaceC2830u {

    /* renamed from: a */
    final /* synthetic */ ObjIntConsumer f1332a;

    private /* synthetic */ C3228q0(ObjIntConsumer objIntConsumer) {
        this.f1332a = objIntConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2830u m177a(ObjIntConsumer objIntConsumer) {
        if (objIntConsumer == null) {
            return null;
        }
        return objIntConsumer instanceof C3230r0 ? ((C3230r0) objIntConsumer).f1334a : new C3228q0(objIntConsumer);
    }

    @Override // p033j$.util.function.InterfaceC2830u
    public /* synthetic */ void accept(Object obj, int i) {
        this.f1332a.accept(obj, i);
    }
}
