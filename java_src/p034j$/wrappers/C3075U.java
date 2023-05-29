package p034j$.wrappers;

import java.util.function.IntPredicate;
/* renamed from: j$.wrappers.U */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3075U {

    /* renamed from: a */
    final /* synthetic */ IntPredicate f1163a;

    private /* synthetic */ C3075U(IntPredicate intPredicate) {
        this.f1163a = intPredicate;
    }

    /* renamed from: a */
    public static /* synthetic */ C3075U m161a(IntPredicate intPredicate) {
        if (intPredicate == null) {
            return null;
        }
        return intPredicate instanceof AbstractC3076V ? ((AbstractC3076V) intPredicate).f1164a : new C3075U(intPredicate);
    }

    /* renamed from: b */
    public boolean m160b(int i) {
        return this.f1163a.test(i);
    }
}
