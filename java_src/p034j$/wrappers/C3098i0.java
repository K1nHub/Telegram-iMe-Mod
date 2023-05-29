package p034j$.wrappers;

import java.util.function.LongPredicate;
/* renamed from: j$.wrappers.i0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3098i0 {

    /* renamed from: a */
    final /* synthetic */ LongPredicate f1186a;

    private /* synthetic */ C3098i0(LongPredicate longPredicate) {
        this.f1186a = longPredicate;
    }

    /* renamed from: a */
    public static /* synthetic */ C3098i0 m130a(LongPredicate longPredicate) {
        if (longPredicate == null) {
            return null;
        }
        return longPredicate instanceof AbstractC3100j0 ? ((AbstractC3100j0) longPredicate).f1188a : new C3098i0(longPredicate);
    }

    /* renamed from: b */
    public boolean m129b(long j) {
        return this.f1186a.test(j);
    }
}
