package p033j$.wrappers;

import java.util.function.LongConsumer;
import p033j$.util.function.InterfaceC2830p;
/* renamed from: j$.wrappers.c0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3205c0 implements InterfaceC2830p {

    /* renamed from: a */
    final /* synthetic */ LongConsumer f1304a;

    private /* synthetic */ C3205c0(LongConsumer longConsumer) {
        this.f1304a = longConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2830p m214b(LongConsumer longConsumer) {
        if (longConsumer == null) {
            return null;
        }
        return longConsumer instanceof C3207d0 ? ((C3207d0) longConsumer).f1306a : new C3205c0(longConsumer);
    }

    @Override // p033j$.util.function.InterfaceC2830p
    public /* synthetic */ void accept(long j) {
        this.f1304a.accept(j);
    }

    @Override // p033j$.util.function.InterfaceC2830p
    /* renamed from: f */
    public /* synthetic */ InterfaceC2830p mo213f(InterfaceC2830p interfaceC2830p) {
        return m214b(this.f1304a.andThen(C3207d0.m211a(interfaceC2830p)));
    }
}
