package p033j$.wrappers;

import java.util.function.LongConsumer;
import p033j$.util.function.InterfaceC2827p;
/* renamed from: j$.wrappers.d0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3204d0 implements LongConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2827p f1306a;

    private /* synthetic */ C3204d0(InterfaceC2827p interfaceC2827p) {
        this.f1306a = interfaceC2827p;
    }

    /* renamed from: a */
    public static /* synthetic */ LongConsumer m211a(InterfaceC2827p interfaceC2827p) {
        if (interfaceC2827p == null) {
            return null;
        }
        return interfaceC2827p instanceof C3202c0 ? ((C3202c0) interfaceC2827p).f1304a : new C3204d0(interfaceC2827p);
    }

    @Override // java.util.function.LongConsumer
    public /* synthetic */ void accept(long j) {
        this.f1306a.accept(j);
    }

    @Override // java.util.function.LongConsumer
    public /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return m211a(this.f1306a.mo213f(C3202c0.m214b(longConsumer)));
    }
}
