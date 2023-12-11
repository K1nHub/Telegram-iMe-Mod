package p033j$.wrappers;

import java.util.function.LongFunction;
import p033j$.util.function.InterfaceC2828q;
/* renamed from: j$.wrappers.e0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3206e0 implements InterfaceC2828q {

    /* renamed from: a */
    final /* synthetic */ LongFunction f1308a;

    private /* synthetic */ C3206e0(LongFunction longFunction) {
        this.f1308a = longFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2828q m208a(LongFunction longFunction) {
        if (longFunction == null) {
            return null;
        }
        return longFunction instanceof C3208f0 ? ((C3208f0) longFunction).f1310a : new C3206e0(longFunction);
    }

    @Override // p033j$.util.function.InterfaceC2828q
    public /* synthetic */ Object apply(long j) {
        return this.f1308a.apply(j);
    }
}
