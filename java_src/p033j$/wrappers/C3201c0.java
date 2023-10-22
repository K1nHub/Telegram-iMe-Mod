package p033j$.wrappers;

import java.util.function.LongConsumer;
import p033j$.util.function.InterfaceC2826p;
/* renamed from: j$.wrappers.c0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3201c0 implements InterfaceC2826p {

    /* renamed from: a */
    final /* synthetic */ LongConsumer f1304a;

    private /* synthetic */ C3201c0(LongConsumer longConsumer) {
        this.f1304a = longConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2826p m213b(LongConsumer longConsumer) {
        if (longConsumer == null) {
            return null;
        }
        return longConsumer instanceof C3203d0 ? ((C3203d0) longConsumer).f1306a : new C3201c0(longConsumer);
    }

    @Override // p033j$.util.function.InterfaceC2826p
    public /* synthetic */ void accept(long j) {
        this.f1304a.accept(j);
    }

    @Override // p033j$.util.function.InterfaceC2826p
    /* renamed from: f */
    public /* synthetic */ InterfaceC2826p mo212f(InterfaceC2826p interfaceC2826p) {
        return m213b(this.f1304a.andThen(C3203d0.m210a(interfaceC2826p)));
    }
}
