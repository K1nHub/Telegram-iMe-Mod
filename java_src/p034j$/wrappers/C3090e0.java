package p034j$.wrappers;

import java.util.function.LongConsumer;
import p034j$.util.function.InterfaceC2705q;
/* renamed from: j$.wrappers.e0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3090e0 implements InterfaceC2705q {

    /* renamed from: a */
    final /* synthetic */ LongConsumer f1178a;

    private /* synthetic */ C3090e0(LongConsumer longConsumer) {
        this.f1178a = longConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2705q m141b(LongConsumer longConsumer) {
        if (longConsumer == null) {
            return null;
        }
        return longConsumer instanceof C3092f0 ? ((C3092f0) longConsumer).f1180a : new C3090e0(longConsumer);
    }

    @Override // p034j$.util.function.InterfaceC2705q
    public /* synthetic */ void accept(long j) {
        this.f1178a.accept(j);
    }

    @Override // p034j$.util.function.InterfaceC2705q
    /* renamed from: f */
    public /* synthetic */ InterfaceC2705q mo140f(InterfaceC2705q interfaceC2705q) {
        return m141b(this.f1178a.andThen(C3092f0.m138a(interfaceC2705q)));
    }
}
