package p034j$.wrappers;

import java.util.function.LongConsumer;
import p034j$.util.function.InterfaceC2465q;
/* renamed from: j$.wrappers.e0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2850e0 implements InterfaceC2465q {

    /* renamed from: a */
    final /* synthetic */ LongConsumer f1169a;

    private /* synthetic */ C2850e0(LongConsumer longConsumer) {
        this.f1169a = longConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2465q m156b(LongConsumer longConsumer) {
        if (longConsumer == null) {
            return null;
        }
        return longConsumer instanceof C2852f0 ? ((C2852f0) longConsumer).f1171a : new C2850e0(longConsumer);
    }

    @Override // p034j$.util.function.InterfaceC2465q
    public /* synthetic */ void accept(long j) {
        this.f1169a.accept(j);
    }

    @Override // p034j$.util.function.InterfaceC2465q
    /* renamed from: f */
    public /* synthetic */ InterfaceC2465q mo155f(InterfaceC2465q interfaceC2465q) {
        return m156b(this.f1169a.andThen(C2852f0.m153a(interfaceC2465q)));
    }
}
