package p033j$.wrappers;

import java.util.function.LongToIntFunction;
/* renamed from: j$.wrappers.m0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3287m0 {

    /* renamed from: a */
    final /* synthetic */ LongToIntFunction f1280a;

    private /* synthetic */ C3287m0(LongToIntFunction longToIntFunction) {
        this.f1280a = longToIntFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C3287m0 m134b(LongToIntFunction longToIntFunction) {
        if (longToIntFunction == null) {
            return null;
        }
        return longToIntFunction instanceof AbstractC3289n0 ? ((AbstractC3289n0) longToIntFunction).f1282a : new C3287m0(longToIntFunction);
    }

    /* renamed from: a */
    public int m135a(long j) {
        return this.f1280a.applyAsInt(j);
    }
}
