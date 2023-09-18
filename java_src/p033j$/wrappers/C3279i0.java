package p033j$.wrappers;

import java.util.function.LongPredicate;
/* renamed from: j$.wrappers.i0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3279i0 {

    /* renamed from: a */
    final /* synthetic */ LongPredicate f1272a;

    private /* synthetic */ C3279i0(LongPredicate longPredicate) {
        this.f1272a = longPredicate;
    }

    /* renamed from: a */
    public static /* synthetic */ C3279i0 m148a(LongPredicate longPredicate) {
        if (longPredicate == null) {
            return null;
        }
        return longPredicate instanceof AbstractC3281j0 ? ((AbstractC3281j0) longPredicate).f1274a : new C3279i0(longPredicate);
    }

    /* renamed from: b */
    public boolean m147b(long j) {
        return this.f1272a.test(j);
    }
}
