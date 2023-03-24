package p034j$.wrappers;

import java.util.function.LongFunction;
import p034j$.util.function.InterfaceC2604r;
/* renamed from: j$.wrappers.g0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2992g0 implements InterfaceC2604r {

    /* renamed from: a */
    final /* synthetic */ LongFunction f1179a;

    private /* synthetic */ C2992g0(LongFunction longFunction) {
        this.f1179a = longFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2604r m150a(LongFunction longFunction) {
        if (longFunction == null) {
            return null;
        }
        return longFunction instanceof C2994h0 ? ((C2994h0) longFunction).f1181a : new C2992g0(longFunction);
    }

    @Override // p034j$.util.function.InterfaceC2604r
    public /* synthetic */ Object apply(long j) {
        return this.f1179a.apply(j);
    }
}
