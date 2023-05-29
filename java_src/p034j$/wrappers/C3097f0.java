package p034j$.wrappers;

import java.util.function.LongConsumer;
import p034j$.util.function.InterfaceC2710q;
/* renamed from: j$.wrappers.f0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3097f0 implements LongConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2710q f1180a;

    private /* synthetic */ C3097f0(InterfaceC2710q interfaceC2710q) {
        this.f1180a = interfaceC2710q;
    }

    /* renamed from: a */
    public static /* synthetic */ LongConsumer m138a(InterfaceC2710q interfaceC2710q) {
        if (interfaceC2710q == null) {
            return null;
        }
        return interfaceC2710q instanceof C3095e0 ? ((C3095e0) interfaceC2710q).f1178a : new C3097f0(interfaceC2710q);
    }

    @Override // java.util.function.LongConsumer
    public /* synthetic */ void accept(long j) {
        this.f1180a.accept(j);
    }

    @Override // java.util.function.LongConsumer
    public /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return m138a(this.f1180a.mo140f(C3095e0.m141b(longConsumer)));
    }
}
