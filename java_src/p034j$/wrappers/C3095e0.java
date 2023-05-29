package p034j$.wrappers;

import java.util.function.LongConsumer;
import p034j$.util.function.InterfaceC2710q;
/* renamed from: j$.wrappers.e0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3095e0 implements InterfaceC2710q {

    /* renamed from: a */
    final /* synthetic */ LongConsumer f1178a;

    private /* synthetic */ C3095e0(LongConsumer longConsumer) {
        this.f1178a = longConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2710q m141b(LongConsumer longConsumer) {
        if (longConsumer == null) {
            return null;
        }
        return longConsumer instanceof C3097f0 ? ((C3097f0) longConsumer).f1180a : new C3095e0(longConsumer);
    }

    @Override // p034j$.util.function.InterfaceC2710q
    public /* synthetic */ void accept(long j) {
        this.f1178a.accept(j);
    }

    @Override // p034j$.util.function.InterfaceC2710q
    /* renamed from: f */
    public /* synthetic */ InterfaceC2710q mo140f(InterfaceC2710q interfaceC2710q) {
        return m141b(this.f1178a.andThen(C3097f0.m138a(interfaceC2710q)));
    }
}
