package p035j$.wrappers;

import java.util.function.LongFunction;
import p035j$.util.function.InterfaceC2680r;
/* renamed from: j$.wrappers.g0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3068g0 implements InterfaceC2680r {

    /* renamed from: a */
    final /* synthetic */ LongFunction f1184a;

    private /* synthetic */ C3068g0(LongFunction longFunction) {
        this.f1184a = longFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2680r m145a(LongFunction longFunction) {
        if (longFunction == null) {
            return null;
        }
        return longFunction instanceof C3070h0 ? ((C3070h0) longFunction).f1186a : new C3068g0(longFunction);
    }

    @Override // p035j$.util.function.InterfaceC2680r
    public /* synthetic */ Object apply(long j) {
        return this.f1184a.apply(j);
    }
}
