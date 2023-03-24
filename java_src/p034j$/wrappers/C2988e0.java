package p034j$.wrappers;

import java.util.function.LongConsumer;
import p034j$.util.function.InterfaceC2603q;
/* renamed from: j$.wrappers.e0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2988e0 implements InterfaceC2603q {

    /* renamed from: a */
    final /* synthetic */ LongConsumer f1175a;

    private /* synthetic */ C2988e0(LongConsumer longConsumer) {
        this.f1175a = longConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2603q m155b(LongConsumer longConsumer) {
        if (longConsumer == null) {
            return null;
        }
        return longConsumer instanceof C2990f0 ? ((C2990f0) longConsumer).f1177a : new C2988e0(longConsumer);
    }

    @Override // p034j$.util.function.InterfaceC2603q
    public /* synthetic */ void accept(long j) {
        this.f1175a.accept(j);
    }

    @Override // p034j$.util.function.InterfaceC2603q
    /* renamed from: f */
    public /* synthetic */ InterfaceC2603q mo154f(InterfaceC2603q interfaceC2603q) {
        return m155b(this.f1175a.andThen(C2990f0.m152a(interfaceC2603q)));
    }
}
