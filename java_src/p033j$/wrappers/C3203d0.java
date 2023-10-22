package p033j$.wrappers;

import java.util.function.LongConsumer;
import p033j$.util.function.InterfaceC2826p;
/* renamed from: j$.wrappers.d0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3203d0 implements LongConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2826p f1306a;

    private /* synthetic */ C3203d0(InterfaceC2826p interfaceC2826p) {
        this.f1306a = interfaceC2826p;
    }

    /* renamed from: a */
    public static /* synthetic */ LongConsumer m210a(InterfaceC2826p interfaceC2826p) {
        if (interfaceC2826p == null) {
            return null;
        }
        return interfaceC2826p instanceof C3201c0 ? ((C3201c0) interfaceC2826p).f1304a : new C3203d0(interfaceC2826p);
    }

    @Override // java.util.function.LongConsumer
    public /* synthetic */ void accept(long j) {
        this.f1306a.accept(j);
    }

    @Override // java.util.function.LongConsumer
    public /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return m210a(this.f1306a.mo212f(C3201c0.m213b(longConsumer)));
    }
}
