package p033j$.wrappers;

import java.util.function.LongConsumer;
import p033j$.util.function.InterfaceC2825p;
/* renamed from: j$.wrappers.d0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3202d0 implements LongConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2825p f1306a;

    private /* synthetic */ C3202d0(InterfaceC2825p interfaceC2825p) {
        this.f1306a = interfaceC2825p;
    }

    /* renamed from: a */
    public static /* synthetic */ LongConsumer m214a(InterfaceC2825p interfaceC2825p) {
        if (interfaceC2825p == null) {
            return null;
        }
        return interfaceC2825p instanceof C3200c0 ? ((C3200c0) interfaceC2825p).f1304a : new C3202d0(interfaceC2825p);
    }

    @Override // java.util.function.LongConsumer
    public /* synthetic */ void accept(long j) {
        this.f1306a.accept(j);
    }

    @Override // java.util.function.LongConsumer
    public /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return m214a(this.f1306a.mo216f(C3200c0.m217b(longConsumer)));
    }
}
