package p033j$.wrappers;

import java.util.function.LongConsumer;
import p033j$.util.function.InterfaceC2970q;
/* renamed from: j$.wrappers.f0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3357f0 implements LongConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2970q f1275a;

    private /* synthetic */ C3357f0(InterfaceC2970q interfaceC2970q) {
        this.f1275a = interfaceC2970q;
    }

    /* renamed from: a */
    public static /* synthetic */ LongConsumer m156a(InterfaceC2970q interfaceC2970q) {
        if (interfaceC2970q == null) {
            return null;
        }
        return interfaceC2970q instanceof C3355e0 ? ((C3355e0) interfaceC2970q).f1273a : new C3357f0(interfaceC2970q);
    }

    @Override // java.util.function.LongConsumer
    public /* synthetic */ void accept(long j) {
        this.f1275a.accept(j);
    }

    @Override // java.util.function.LongConsumer
    public /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return m156a(this.f1275a.mo158f(C3355e0.m159b(longConsumer)));
    }
}
