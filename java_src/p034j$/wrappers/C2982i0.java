package p034j$.wrappers;

import java.util.function.LongPredicate;
/* renamed from: j$.wrappers.i0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2982i0 {

    /* renamed from: a */
    final /* synthetic */ LongPredicate f1182a;

    private /* synthetic */ C2982i0(LongPredicate longPredicate) {
        this.f1182a = longPredicate;
    }

    /* renamed from: a */
    public static /* synthetic */ C2982i0 m145a(LongPredicate longPredicate) {
        if (longPredicate == null) {
            return null;
        }
        return longPredicate instanceof AbstractC2984j0 ? ((AbstractC2984j0) longPredicate).f1184a : new C2982i0(longPredicate);
    }

    /* renamed from: b */
    public boolean m144b(long j) {
        return this.f1182a.test(j);
    }
}
