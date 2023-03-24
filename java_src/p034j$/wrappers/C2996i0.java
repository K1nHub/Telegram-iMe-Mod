package p034j$.wrappers;

import java.util.function.LongPredicate;
/* renamed from: j$.wrappers.i0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2996i0 {

    /* renamed from: a */
    final /* synthetic */ LongPredicate f1183a;

    private /* synthetic */ C2996i0(LongPredicate longPredicate) {
        this.f1183a = longPredicate;
    }

    /* renamed from: a */
    public static /* synthetic */ C2996i0 m144a(LongPredicate longPredicate) {
        if (longPredicate == null) {
            return null;
        }
        return longPredicate instanceof AbstractC2998j0 ? ((AbstractC2998j0) longPredicate).f1185a : new C2996i0(longPredicate);
    }

    /* renamed from: b */
    public boolean m143b(long j) {
        return this.f1183a.test(j);
    }
}
