package p033j$.wrappers;

import java.util.function.LongConsumer;
import p033j$.util.function.InterfaceC2970q;
/* renamed from: j$.wrappers.e0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3355e0 implements InterfaceC2970q {

    /* renamed from: a */
    final /* synthetic */ LongConsumer f1273a;

    private /* synthetic */ C3355e0(LongConsumer longConsumer) {
        this.f1273a = longConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2970q m159b(LongConsumer longConsumer) {
        if (longConsumer == null) {
            return null;
        }
        return longConsumer instanceof C3357f0 ? ((C3357f0) longConsumer).f1275a : new C3355e0(longConsumer);
    }

    @Override // p033j$.util.function.InterfaceC2970q
    public /* synthetic */ void accept(long j) {
        this.f1273a.accept(j);
    }

    @Override // p033j$.util.function.InterfaceC2970q
    /* renamed from: f */
    public /* synthetic */ InterfaceC2970q mo158f(InterfaceC2970q interfaceC2970q) {
        return m159b(this.f1273a.andThen(C3357f0.m156a(interfaceC2970q)));
    }
}
