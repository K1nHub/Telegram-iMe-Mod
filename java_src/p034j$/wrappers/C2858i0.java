package p034j$.wrappers;

import java.util.function.LongPredicate;
/* renamed from: j$.wrappers.i0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2858i0 {

    /* renamed from: a */
    final /* synthetic */ LongPredicate f1177a;

    private /* synthetic */ C2858i0(LongPredicate longPredicate) {
        this.f1177a = longPredicate;
    }

    /* renamed from: a */
    public static /* synthetic */ C2858i0 m145a(LongPredicate longPredicate) {
        if (longPredicate == null) {
            return null;
        }
        return longPredicate instanceof AbstractC2860j0 ? ((AbstractC2860j0) longPredicate).f1179a : new C2858i0(longPredicate);
    }

    /* renamed from: b */
    public boolean m144b(long j) {
        return this.f1177a.test(j);
    }
}
