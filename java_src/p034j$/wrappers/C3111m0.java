package p034j$.wrappers;

import java.util.function.LongToIntFunction;
/* renamed from: j$.wrappers.m0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3111m0 {

    /* renamed from: a */
    final /* synthetic */ LongToIntFunction f1194a;

    private /* synthetic */ C3111m0(LongToIntFunction longToIntFunction) {
        this.f1194a = longToIntFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C3111m0 m116b(LongToIntFunction longToIntFunction) {
        if (longToIntFunction == null) {
            return null;
        }
        return longToIntFunction instanceof AbstractC3113n0 ? ((AbstractC3113n0) longToIntFunction).f1196a : new C3111m0(longToIntFunction);
    }

    /* renamed from: a */
    public int m117a(long j) {
        return this.f1194a.applyAsInt(j);
    }
}
