package p034j$.wrappers;

import java.util.function.LongConsumer;
import p034j$.util.function.InterfaceC2603q;
/* renamed from: j$.wrappers.f0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2990f0 implements LongConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2603q f1177a;

    private /* synthetic */ C2990f0(InterfaceC2603q interfaceC2603q) {
        this.f1177a = interfaceC2603q;
    }

    /* renamed from: a */
    public static /* synthetic */ LongConsumer m152a(InterfaceC2603q interfaceC2603q) {
        if (interfaceC2603q == null) {
            return null;
        }
        return interfaceC2603q instanceof C2988e0 ? ((C2988e0) interfaceC2603q).f1175a : new C2990f0(interfaceC2603q);
    }

    @Override // java.util.function.LongConsumer
    public /* synthetic */ void accept(long j) {
        this.f1177a.accept(j);
    }

    @Override // java.util.function.LongConsumer
    public /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return m152a(this.f1177a.mo154f(C2988e0.m155b(longConsumer)));
    }
}
