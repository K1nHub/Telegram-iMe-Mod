package p033j$.wrappers;

import java.util.function.LongPredicate;
/* renamed from: j$.wrappers.g0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3209g0 {

    /* renamed from: a */
    final /* synthetic */ LongPredicate f1312a;

    private /* synthetic */ C3209g0(LongPredicate longPredicate) {
        this.f1312a = longPredicate;
    }

    /* renamed from: a */
    public static /* synthetic */ C3209g0 m203a(LongPredicate longPredicate) {
        if (longPredicate == null) {
            return null;
        }
        return longPredicate instanceof AbstractC3211h0 ? ((AbstractC3211h0) longPredicate).f1314a : new C3209g0(longPredicate);
    }

    /* renamed from: b */
    public boolean m202b(long j) {
        return this.f1312a.test(j);
    }
}
