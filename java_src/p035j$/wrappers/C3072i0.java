package p035j$.wrappers;

import java.util.function.LongPredicate;
/* renamed from: j$.wrappers.i0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3072i0 {

    /* renamed from: a */
    final /* synthetic */ LongPredicate f1188a;

    private /* synthetic */ C3072i0(LongPredicate longPredicate) {
        this.f1188a = longPredicate;
    }

    /* renamed from: a */
    public static /* synthetic */ C3072i0 m139a(LongPredicate longPredicate) {
        if (longPredicate == null) {
            return null;
        }
        return longPredicate instanceof AbstractC3074j0 ? ((AbstractC3074j0) longPredicate).f1190a : new C3072i0(longPredicate);
    }

    /* renamed from: b */
    public boolean m138b(long j) {
        return this.f1188a.test(j);
    }
}
