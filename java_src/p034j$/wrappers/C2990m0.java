package p034j$.wrappers;

import java.util.function.LongToIntFunction;
/* renamed from: j$.wrappers.m0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2990m0 {

    /* renamed from: a */
    final /* synthetic */ LongToIntFunction f1190a;

    private /* synthetic */ C2990m0(LongToIntFunction longToIntFunction) {
        this.f1190a = longToIntFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C2990m0 m131b(LongToIntFunction longToIntFunction) {
        if (longToIntFunction == null) {
            return null;
        }
        return longToIntFunction instanceof AbstractC2992n0 ? ((AbstractC2992n0) longToIntFunction).f1192a : new C2990m0(longToIntFunction);
    }

    /* renamed from: a */
    public int m132a(long j) {
        return this.f1190a.applyAsInt(j);
    }
}
