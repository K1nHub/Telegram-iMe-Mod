package p034j$.wrappers;

import java.util.function.LongFunction;
import p034j$.util.function.InterfaceC2667r;
/* renamed from: j$.wrappers.g0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3055g0 implements InterfaceC2667r {

    /* renamed from: a */
    final /* synthetic */ LongFunction f1179a;

    private /* synthetic */ C3055g0(LongFunction longFunction) {
        this.f1179a = longFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2667r m131a(LongFunction longFunction) {
        if (longFunction == null) {
            return null;
        }
        return longFunction instanceof C3057h0 ? ((C3057h0) longFunction).f1181a : new C3055g0(longFunction);
    }

    @Override // p034j$.util.function.InterfaceC2667r
    public /* synthetic */ Object apply(long j) {
        return this.f1179a.apply(j);
    }
}
