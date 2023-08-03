package p033j$.wrappers;

import java.util.function.LongPredicate;
/* renamed from: j$.wrappers.i0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3224i0 {

    /* renamed from: a */
    final /* synthetic */ LongPredicate f1271a;

    private /* synthetic */ C3224i0(LongPredicate longPredicate) {
        this.f1271a = longPredicate;
    }

    /* renamed from: a */
    public static /* synthetic */ C3224i0 m148a(LongPredicate longPredicate) {
        if (longPredicate == null) {
            return null;
        }
        return longPredicate instanceof AbstractC3226j0 ? ((AbstractC3226j0) longPredicate).f1273a : new C3224i0(longPredicate);
    }

    /* renamed from: b */
    public boolean m147b(long j) {
        return this.f1271a.test(j);
    }
}
