package p033j$.wrappers;

import java.util.function.LongPredicate;
/* renamed from: j$.wrappers.i0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3363i0 {

    /* renamed from: a */
    final /* synthetic */ LongPredicate f1281a;

    private /* synthetic */ C3363i0(LongPredicate longPredicate) {
        this.f1281a = longPredicate;
    }

    /* renamed from: a */
    public static /* synthetic */ C3363i0 m148a(LongPredicate longPredicate) {
        if (longPredicate == null) {
            return null;
        }
        return longPredicate instanceof AbstractC3365j0 ? ((AbstractC3365j0) longPredicate).f1283a : new C3363i0(longPredicate);
    }

    /* renamed from: b */
    public boolean m147b(long j) {
        return this.f1281a.test(j);
    }
}
