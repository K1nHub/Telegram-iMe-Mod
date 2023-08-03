package p033j$.wrappers;

import java.util.function.LongConsumer;
import p033j$.util.function.InterfaceC2831q;
/* renamed from: j$.wrappers.e0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3216e0 implements InterfaceC2831q {

    /* renamed from: a */
    final /* synthetic */ LongConsumer f1263a;

    private /* synthetic */ C3216e0(LongConsumer longConsumer) {
        this.f1263a = longConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2831q m159b(LongConsumer longConsumer) {
        if (longConsumer == null) {
            return null;
        }
        return longConsumer instanceof C3218f0 ? ((C3218f0) longConsumer).f1265a : new C3216e0(longConsumer);
    }

    @Override // p033j$.util.function.InterfaceC2831q
    public /* synthetic */ void accept(long j) {
        this.f1263a.accept(j);
    }

    @Override // p033j$.util.function.InterfaceC2831q
    /* renamed from: f */
    public /* synthetic */ InterfaceC2831q mo158f(InterfaceC2831q interfaceC2831q) {
        return m159b(this.f1263a.andThen(C3218f0.m156a(interfaceC2831q)));
    }
}
