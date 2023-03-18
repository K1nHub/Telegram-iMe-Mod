package p034j$.wrappers;

import java.util.function.LongConsumer;
import p034j$.util.function.InterfaceC2589q;
/* renamed from: j$.wrappers.f0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2976f0 implements LongConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2589q f1176a;

    private /* synthetic */ C2976f0(InterfaceC2589q interfaceC2589q) {
        this.f1176a = interfaceC2589q;
    }

    /* renamed from: a */
    public static /* synthetic */ LongConsumer m153a(InterfaceC2589q interfaceC2589q) {
        if (interfaceC2589q == null) {
            return null;
        }
        return interfaceC2589q instanceof C2974e0 ? ((C2974e0) interfaceC2589q).f1174a : new C2976f0(interfaceC2589q);
    }

    @Override // java.util.function.LongConsumer
    public /* synthetic */ void accept(long j) {
        this.f1176a.accept(j);
    }

    @Override // java.util.function.LongConsumer
    public /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return m153a(this.f1176a.mo155f(C2974e0.m156b(longConsumer)));
    }
}
