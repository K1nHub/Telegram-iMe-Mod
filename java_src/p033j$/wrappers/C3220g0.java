package p033j$.wrappers;

import java.util.function.LongFunction;
import p033j$.util.function.InterfaceC2832r;
/* renamed from: j$.wrappers.g0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3220g0 implements InterfaceC2832r {

    /* renamed from: a */
    final /* synthetic */ LongFunction f1264a;

    private /* synthetic */ C3220g0(LongFunction longFunction) {
        this.f1264a = longFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2832r m136a(LongFunction longFunction) {
        if (longFunction == null) {
            return null;
        }
        return longFunction instanceof C3222h0 ? ((C3222h0) longFunction).f1266a : new C3220g0(longFunction);
    }

    @Override // p033j$.util.function.InterfaceC2832r
    public /* synthetic */ Object apply(long j) {
        return this.f1264a.apply(j);
    }
}
