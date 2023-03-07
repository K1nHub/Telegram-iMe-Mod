package p034j$.wrappers;

import java.util.function.LongFunction;
import p034j$.util.function.InterfaceC2466r;
/* renamed from: j$.wrappers.g0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2854g0 implements InterfaceC2466r {

    /* renamed from: a */
    final /* synthetic */ LongFunction f1173a;

    private /* synthetic */ C2854g0(LongFunction longFunction) {
        this.f1173a = longFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2466r m151a(LongFunction longFunction) {
        if (longFunction == null) {
            return null;
        }
        return longFunction instanceof C2856h0 ? ((C2856h0) longFunction).f1175a : new C2854g0(longFunction);
    }

    @Override // p034j$.util.function.InterfaceC2466r
    public /* synthetic */ Object apply(long j) {
        return this.f1173a.apply(j);
    }
}
