package p033j$.wrappers;

import java.util.function.LongToIntFunction;
/* renamed from: j$.wrappers.m0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3371m0 {

    /* renamed from: a */
    final /* synthetic */ LongToIntFunction f1289a;

    private /* synthetic */ C3371m0(LongToIntFunction longToIntFunction) {
        this.f1289a = longToIntFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C3371m0 m134b(LongToIntFunction longToIntFunction) {
        if (longToIntFunction == null) {
            return null;
        }
        return longToIntFunction instanceof AbstractC3373n0 ? ((AbstractC3373n0) longToIntFunction).f1291a : new C3371m0(longToIntFunction);
    }

    /* renamed from: a */
    public int m135a(long j) {
        return this.f1289a.applyAsInt(j);
    }
}
