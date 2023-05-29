package p034j$.wrappers;

import java.util.function.LongFunction;
import p034j$.util.function.InterfaceC2711r;
/* renamed from: j$.wrappers.g0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3099g0 implements InterfaceC2711r {

    /* renamed from: a */
    final /* synthetic */ LongFunction f1182a;

    private /* synthetic */ C3099g0(LongFunction longFunction) {
        this.f1182a = longFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2711r m136a(LongFunction longFunction) {
        if (longFunction == null) {
            return null;
        }
        return longFunction instanceof C3101h0 ? ((C3101h0) longFunction).f1184a : new C3099g0(longFunction);
    }

    @Override // p034j$.util.function.InterfaceC2711r
    public /* synthetic */ Object apply(long j) {
        return this.f1182a.apply(j);
    }
}
