package p034j$.wrappers;

import java.util.function.LongConsumer;
import p034j$.util.function.InterfaceC2589q;
/* renamed from: j$.wrappers.e0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2974e0 implements InterfaceC2589q {

    /* renamed from: a */
    final /* synthetic */ LongConsumer f1174a;

    private /* synthetic */ C2974e0(LongConsumer longConsumer) {
        this.f1174a = longConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2589q m156b(LongConsumer longConsumer) {
        if (longConsumer == null) {
            return null;
        }
        return longConsumer instanceof C2976f0 ? ((C2976f0) longConsumer).f1176a : new C2974e0(longConsumer);
    }

    @Override // p034j$.util.function.InterfaceC2589q
    public /* synthetic */ void accept(long j) {
        this.f1174a.accept(j);
    }

    @Override // p034j$.util.function.InterfaceC2589q
    /* renamed from: f */
    public /* synthetic */ InterfaceC2589q mo155f(InterfaceC2589q interfaceC2589q) {
        return m156b(this.f1174a.andThen(C2976f0.m153a(interfaceC2589q)));
    }
}
