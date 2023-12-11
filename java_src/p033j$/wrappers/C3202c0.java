package p033j$.wrappers;

import java.util.function.LongConsumer;
import p033j$.util.function.InterfaceC2827p;
/* renamed from: j$.wrappers.c0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3202c0 implements InterfaceC2827p {

    /* renamed from: a */
    final /* synthetic */ LongConsumer f1304a;

    private /* synthetic */ C3202c0(LongConsumer longConsumer) {
        this.f1304a = longConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2827p m214b(LongConsumer longConsumer) {
        if (longConsumer == null) {
            return null;
        }
        return longConsumer instanceof C3204d0 ? ((C3204d0) longConsumer).f1306a : new C3202c0(longConsumer);
    }

    @Override // p033j$.util.function.InterfaceC2827p
    public /* synthetic */ void accept(long j) {
        this.f1304a.accept(j);
    }

    @Override // p033j$.util.function.InterfaceC2827p
    /* renamed from: f */
    public /* synthetic */ InterfaceC2827p mo213f(InterfaceC2827p interfaceC2827p) {
        return m214b(this.f1304a.andThen(C3204d0.m211a(interfaceC2827p)));
    }
}
