package p033j$.wrappers;

import java.util.function.LongFunction;
import p033j$.util.function.InterfaceC2887r;
/* renamed from: j$.wrappers.g0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3275g0 implements InterfaceC2887r {

    /* renamed from: a */
    final /* synthetic */ LongFunction f1268a;

    private /* synthetic */ C3275g0(LongFunction longFunction) {
        this.f1268a = longFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2887r m154a(LongFunction longFunction) {
        if (longFunction == null) {
            return null;
        }
        return longFunction instanceof C3277h0 ? ((C3277h0) longFunction).f1270a : new C3275g0(longFunction);
    }

    @Override // p033j$.util.function.InterfaceC2887r
    public /* synthetic */ Object apply(long j) {
        return this.f1268a.apply(j);
    }
}
