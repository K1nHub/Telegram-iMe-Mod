package p033j$.wrappers;

import java.util.function.LongConsumer;
import p033j$.util.function.InterfaceC2831q;
/* renamed from: j$.wrappers.f0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3218f0 implements LongConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2831q f1265a;

    private /* synthetic */ C3218f0(InterfaceC2831q interfaceC2831q) {
        this.f1265a = interfaceC2831q;
    }

    /* renamed from: a */
    public static /* synthetic */ LongConsumer m156a(InterfaceC2831q interfaceC2831q) {
        if (interfaceC2831q == null) {
            return null;
        }
        return interfaceC2831q instanceof C3216e0 ? ((C3216e0) interfaceC2831q).f1263a : new C3218f0(interfaceC2831q);
    }

    @Override // java.util.function.LongConsumer
    public /* synthetic */ void accept(long j) {
        this.f1265a.accept(j);
    }

    @Override // java.util.function.LongConsumer
    public /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return m156a(this.f1265a.mo158f(C3216e0.m159b(longConsumer)));
    }
}
