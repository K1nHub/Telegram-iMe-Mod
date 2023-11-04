package p033j$.wrappers;

import java.util.function.LongConsumer;
import p033j$.util.function.InterfaceC2830p;
/* renamed from: j$.wrappers.d0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3207d0 implements LongConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2830p f1306a;

    private /* synthetic */ C3207d0(InterfaceC2830p interfaceC2830p) {
        this.f1306a = interfaceC2830p;
    }

    /* renamed from: a */
    public static /* synthetic */ LongConsumer m211a(InterfaceC2830p interfaceC2830p) {
        if (interfaceC2830p == null) {
            return null;
        }
        return interfaceC2830p instanceof C3205c0 ? ((C3205c0) interfaceC2830p).f1304a : new C3207d0(interfaceC2830p);
    }

    @Override // java.util.function.LongConsumer
    public /* synthetic */ void accept(long j) {
        this.f1306a.accept(j);
    }

    @Override // java.util.function.LongConsumer
    public /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return m211a(this.f1306a.mo213f(C3205c0.m214b(longConsumer)));
    }
}
