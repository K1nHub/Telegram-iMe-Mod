package p034j$.wrappers;

import java.util.function.LongConsumer;
import p034j$.util.function.InterfaceC2465q;
/* renamed from: j$.wrappers.f0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2852f0 implements LongConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2465q f1171a;

    private /* synthetic */ C2852f0(InterfaceC2465q interfaceC2465q) {
        this.f1171a = interfaceC2465q;
    }

    /* renamed from: a */
    public static /* synthetic */ LongConsumer m153a(InterfaceC2465q interfaceC2465q) {
        if (interfaceC2465q == null) {
            return null;
        }
        return interfaceC2465q instanceof C2850e0 ? ((C2850e0) interfaceC2465q).f1169a : new C2852f0(interfaceC2465q);
    }

    @Override // java.util.function.LongConsumer
    public /* synthetic */ void accept(long j) {
        this.f1171a.accept(j);
    }

    @Override // java.util.function.LongConsumer
    public /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return m153a(this.f1171a.mo155f(C2850e0.m156b(longConsumer)));
    }
}
