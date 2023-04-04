package p035j$.wrappers;

import java.util.function.LongConsumer;
import p035j$.util.function.InterfaceC2679q;
/* renamed from: j$.wrappers.e0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3064e0 implements InterfaceC2679q {

    /* renamed from: a */
    final /* synthetic */ LongConsumer f1180a;

    private /* synthetic */ C3064e0(LongConsumer longConsumer) {
        this.f1180a = longConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2679q m150b(LongConsumer longConsumer) {
        if (longConsumer == null) {
            return null;
        }
        return longConsumer instanceof C3066f0 ? ((C3066f0) longConsumer).f1182a : new C3064e0(longConsumer);
    }

    @Override // p035j$.util.function.InterfaceC2679q
    public /* synthetic */ void accept(long j) {
        this.f1180a.accept(j);
    }

    @Override // p035j$.util.function.InterfaceC2679q
    /* renamed from: f */
    public /* synthetic */ InterfaceC2679q mo149f(InterfaceC2679q interfaceC2679q) {
        return m150b(this.f1180a.andThen(C3066f0.m147a(interfaceC2679q)));
    }
}
