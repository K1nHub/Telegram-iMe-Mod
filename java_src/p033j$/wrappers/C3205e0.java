package p033j$.wrappers;

import java.util.function.LongFunction;
import p033j$.util.function.InterfaceC2827q;
/* renamed from: j$.wrappers.e0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3205e0 implements InterfaceC2827q {

    /* renamed from: a */
    final /* synthetic */ LongFunction f1308a;

    private /* synthetic */ C3205e0(LongFunction longFunction) {
        this.f1308a = longFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2827q m207a(LongFunction longFunction) {
        if (longFunction == null) {
            return null;
        }
        return longFunction instanceof C3207f0 ? ((C3207f0) longFunction).f1310a : new C3205e0(longFunction);
    }

    @Override // p033j$.util.function.InterfaceC2827q
    public /* synthetic */ Object apply(long j) {
        return this.f1308a.apply(j);
    }
}
