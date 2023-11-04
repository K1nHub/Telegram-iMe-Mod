package p033j$.wrappers;

import java.util.function.LongFunction;
import p033j$.util.function.InterfaceC2831q;
/* renamed from: j$.wrappers.e0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3209e0 implements InterfaceC2831q {

    /* renamed from: a */
    final /* synthetic */ LongFunction f1308a;

    private /* synthetic */ C3209e0(LongFunction longFunction) {
        this.f1308a = longFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2831q m208a(LongFunction longFunction) {
        if (longFunction == null) {
            return null;
        }
        return longFunction instanceof C3211f0 ? ((C3211f0) longFunction).f1310a : new C3209e0(longFunction);
    }

    @Override // p033j$.util.function.InterfaceC2831q
    public /* synthetic */ Object apply(long j) {
        return this.f1308a.apply(j);
    }
}
