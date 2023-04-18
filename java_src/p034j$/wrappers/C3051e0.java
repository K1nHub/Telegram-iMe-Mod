package p034j$.wrappers;

import java.util.function.LongConsumer;
import p034j$.util.function.InterfaceC2666q;
/* renamed from: j$.wrappers.e0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3051e0 implements InterfaceC2666q {

    /* renamed from: a */
    final /* synthetic */ LongConsumer f1175a;

    private /* synthetic */ C3051e0(LongConsumer longConsumer) {
        this.f1175a = longConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2666q m136b(LongConsumer longConsumer) {
        if (longConsumer == null) {
            return null;
        }
        return longConsumer instanceof C3053f0 ? ((C3053f0) longConsumer).f1177a : new C3051e0(longConsumer);
    }

    @Override // p034j$.util.function.InterfaceC2666q
    public /* synthetic */ void accept(long j) {
        this.f1175a.accept(j);
    }

    @Override // p034j$.util.function.InterfaceC2666q
    /* renamed from: f */
    public /* synthetic */ InterfaceC2666q mo135f(InterfaceC2666q interfaceC2666q) {
        return m136b(this.f1175a.andThen(C3053f0.m133a(interfaceC2666q)));
    }
}
