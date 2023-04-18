package p034j$.wrappers;

import java.util.function.LongPredicate;
/* renamed from: j$.wrappers.i0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3059i0 {

    /* renamed from: a */
    final /* synthetic */ LongPredicate f1183a;

    private /* synthetic */ C3059i0(LongPredicate longPredicate) {
        this.f1183a = longPredicate;
    }

    /* renamed from: a */
    public static /* synthetic */ C3059i0 m125a(LongPredicate longPredicate) {
        if (longPredicate == null) {
            return null;
        }
        return longPredicate instanceof AbstractC3061j0 ? ((AbstractC3061j0) longPredicate).f1185a : new C3059i0(longPredicate);
    }

    /* renamed from: b */
    public boolean m124b(long j) {
        return this.f1183a.test(j);
    }
}
