package p033j$.wrappers;

import java.util.function.ObjIntConsumer;
import p033j$.util.function.InterfaceC2832u;
/* renamed from: j$.wrappers.q0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3230q0 implements InterfaceC2832u {

    /* renamed from: a */
    final /* synthetic */ ObjIntConsumer f1332a;

    private /* synthetic */ C3230q0(ObjIntConsumer objIntConsumer) {
        this.f1332a = objIntConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2832u m174a(ObjIntConsumer objIntConsumer) {
        if (objIntConsumer == null) {
            return null;
        }
        return objIntConsumer instanceof C3232r0 ? ((C3232r0) objIntConsumer).f1334a : new C3230q0(objIntConsumer);
    }

    @Override // p033j$.util.function.InterfaceC2832u
    public /* synthetic */ void accept(Object obj, int i) {
        this.f1332a.accept(obj, i);
    }
}
