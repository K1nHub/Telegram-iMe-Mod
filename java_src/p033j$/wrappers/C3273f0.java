package p033j$.wrappers;

import java.util.function.LongConsumer;
import p033j$.util.function.InterfaceC2886q;
/* renamed from: j$.wrappers.f0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3273f0 implements LongConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2886q f1266a;

    private /* synthetic */ C3273f0(InterfaceC2886q interfaceC2886q) {
        this.f1266a = interfaceC2886q;
    }

    /* renamed from: a */
    public static /* synthetic */ LongConsumer m156a(InterfaceC2886q interfaceC2886q) {
        if (interfaceC2886q == null) {
            return null;
        }
        return interfaceC2886q instanceof C3271e0 ? ((C3271e0) interfaceC2886q).f1264a : new C3273f0(interfaceC2886q);
    }

    @Override // java.util.function.LongConsumer
    public /* synthetic */ void accept(long j) {
        this.f1266a.accept(j);
    }

    @Override // java.util.function.LongConsumer
    public /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return m156a(this.f1266a.mo158f(C3271e0.m159b(longConsumer)));
    }
}
