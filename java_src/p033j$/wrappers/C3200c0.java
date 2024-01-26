package p033j$.wrappers;

import java.util.function.LongConsumer;
import p033j$.util.function.InterfaceC2825p;
/* renamed from: j$.wrappers.c0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3200c0 implements InterfaceC2825p {

    /* renamed from: a */
    final /* synthetic */ LongConsumer f1304a;

    private /* synthetic */ C3200c0(LongConsumer longConsumer) {
        this.f1304a = longConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2825p m217b(LongConsumer longConsumer) {
        if (longConsumer == null) {
            return null;
        }
        return longConsumer instanceof C3202d0 ? ((C3202d0) longConsumer).f1306a : new C3200c0(longConsumer);
    }

    @Override // p033j$.util.function.InterfaceC2825p
    public /* synthetic */ void accept(long j) {
        this.f1304a.accept(j);
    }

    @Override // p033j$.util.function.InterfaceC2825p
    /* renamed from: f */
    public /* synthetic */ InterfaceC2825p mo216f(InterfaceC2825p interfaceC2825p) {
        return m217b(this.f1304a.andThen(C3202d0.m214a(interfaceC2825p)));
    }
}
