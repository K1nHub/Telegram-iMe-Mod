package p033j$.wrappers;

import java.util.function.LongConsumer;
import p033j$.util.function.InterfaceC2886q;
/* renamed from: j$.wrappers.e0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3271e0 implements InterfaceC2886q {

    /* renamed from: a */
    final /* synthetic */ LongConsumer f1264a;

    private /* synthetic */ C3271e0(LongConsumer longConsumer) {
        this.f1264a = longConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2886q m159b(LongConsumer longConsumer) {
        if (longConsumer == null) {
            return null;
        }
        return longConsumer instanceof C3273f0 ? ((C3273f0) longConsumer).f1266a : new C3271e0(longConsumer);
    }

    @Override // p033j$.util.function.InterfaceC2886q
    public /* synthetic */ void accept(long j) {
        this.f1264a.accept(j);
    }

    @Override // p033j$.util.function.InterfaceC2886q
    /* renamed from: f */
    public /* synthetic */ InterfaceC2886q mo158f(InterfaceC2886q interfaceC2886q) {
        return m159b(this.f1264a.andThen(C3273f0.m156a(interfaceC2886q)));
    }
}
