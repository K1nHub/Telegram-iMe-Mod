package p033j$.wrappers;

import java.util.function.LongPredicate;
/* renamed from: j$.wrappers.g0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3208g0 {

    /* renamed from: a */
    final /* synthetic */ LongPredicate f1312a;

    private /* synthetic */ C3208g0(LongPredicate longPredicate) {
        this.f1312a = longPredicate;
    }

    /* renamed from: a */
    public static /* synthetic */ C3208g0 m207a(LongPredicate longPredicate) {
        if (longPredicate == null) {
            return null;
        }
        return longPredicate instanceof AbstractC3210h0 ? ((AbstractC3210h0) longPredicate).f1314a : new C3208g0(longPredicate);
    }

    /* renamed from: b */
    public boolean m206b(long j) {
        return this.f1312a.test(j);
    }
}
