package p034j$.wrappers;

import java.util.function.LongConsumer;
import p034j$.util.function.InterfaceC2705q;
/* renamed from: j$.wrappers.f0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3092f0 implements LongConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2705q f1180a;

    private /* synthetic */ C3092f0(InterfaceC2705q interfaceC2705q) {
        this.f1180a = interfaceC2705q;
    }

    /* renamed from: a */
    public static /* synthetic */ LongConsumer m138a(InterfaceC2705q interfaceC2705q) {
        if (interfaceC2705q == null) {
            return null;
        }
        return interfaceC2705q instanceof C3090e0 ? ((C3090e0) interfaceC2705q).f1178a : new C3092f0(interfaceC2705q);
    }

    @Override // java.util.function.LongConsumer
    public /* synthetic */ void accept(long j) {
        this.f1180a.accept(j);
    }

    @Override // java.util.function.LongConsumer
    public /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return m138a(this.f1180a.mo140f(C3090e0.m141b(longConsumer)));
    }
}
