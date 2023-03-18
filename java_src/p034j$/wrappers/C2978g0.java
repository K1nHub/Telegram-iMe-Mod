package p034j$.wrappers;

import java.util.function.LongFunction;
import p034j$.util.function.InterfaceC2590r;
/* renamed from: j$.wrappers.g0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2978g0 implements InterfaceC2590r {

    /* renamed from: a */
    final /* synthetic */ LongFunction f1178a;

    private /* synthetic */ C2978g0(LongFunction longFunction) {
        this.f1178a = longFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2590r m151a(LongFunction longFunction) {
        if (longFunction == null) {
            return null;
        }
        return longFunction instanceof C2980h0 ? ((C2980h0) longFunction).f1180a : new C2978g0(longFunction);
    }

    @Override // p034j$.util.function.InterfaceC2590r
    public /* synthetic */ Object apply(long j) {
        return this.f1178a.apply(j);
    }
}
