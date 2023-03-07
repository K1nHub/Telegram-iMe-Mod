package p034j$.wrappers;

import java.util.function.LongToIntFunction;
/* renamed from: j$.wrappers.m0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2866m0 {

    /* renamed from: a */
    final /* synthetic */ LongToIntFunction f1185a;

    private /* synthetic */ C2866m0(LongToIntFunction longToIntFunction) {
        this.f1185a = longToIntFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C2866m0 m131b(LongToIntFunction longToIntFunction) {
        if (longToIntFunction == null) {
            return null;
        }
        return longToIntFunction instanceof AbstractC2868n0 ? ((AbstractC2868n0) longToIntFunction).f1187a : new C2866m0(longToIntFunction);
    }

    /* renamed from: a */
    public int m132a(long j) {
        return this.f1185a.applyAsInt(j);
    }
}
