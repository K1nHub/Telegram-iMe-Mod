package p033j$.wrappers;

import java.util.function.LongFunction;
import p033j$.util.function.InterfaceC2971r;
/* renamed from: j$.wrappers.g0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3359g0 implements InterfaceC2971r {

    /* renamed from: a */
    final /* synthetic */ LongFunction f1277a;

    private /* synthetic */ C3359g0(LongFunction longFunction) {
        this.f1277a = longFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2971r m154a(LongFunction longFunction) {
        if (longFunction == null) {
            return null;
        }
        return longFunction instanceof C3361h0 ? ((C3361h0) longFunction).f1279a : new C3359g0(longFunction);
    }

    @Override // p033j$.util.function.InterfaceC2971r
    public /* synthetic */ Object apply(long j) {
        return this.f1277a.apply(j);
    }
}
