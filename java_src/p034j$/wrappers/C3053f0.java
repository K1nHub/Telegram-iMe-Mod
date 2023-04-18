package p034j$.wrappers;

import java.util.function.LongConsumer;
import p034j$.util.function.InterfaceC2666q;
/* renamed from: j$.wrappers.f0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3053f0 implements LongConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2666q f1177a;

    private /* synthetic */ C3053f0(InterfaceC2666q interfaceC2666q) {
        this.f1177a = interfaceC2666q;
    }

    /* renamed from: a */
    public static /* synthetic */ LongConsumer m133a(InterfaceC2666q interfaceC2666q) {
        if (interfaceC2666q == null) {
            return null;
        }
        return interfaceC2666q instanceof C3051e0 ? ((C3051e0) interfaceC2666q).f1175a : new C3053f0(interfaceC2666q);
    }

    @Override // java.util.function.LongConsumer
    public /* synthetic */ void accept(long j) {
        this.f1177a.accept(j);
    }

    @Override // java.util.function.LongConsumer
    public /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return m133a(this.f1177a.mo135f(C3051e0.m136b(longConsumer)));
    }
}
