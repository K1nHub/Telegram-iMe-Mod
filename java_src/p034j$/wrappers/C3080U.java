package p034j$.wrappers;

import java.util.function.IntPredicate;
/* renamed from: j$.wrappers.U */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3080U {

    /* renamed from: a */
    final /* synthetic */ IntPredicate f1163a;

    private /* synthetic */ C3080U(IntPredicate intPredicate) {
        this.f1163a = intPredicate;
    }

    /* renamed from: a */
    public static /* synthetic */ C3080U m161a(IntPredicate intPredicate) {
        if (intPredicate == null) {
            return null;
        }
        return intPredicate instanceof AbstractC3081V ? ((AbstractC3081V) intPredicate).f1164a : new C3080U(intPredicate);
    }

    /* renamed from: b */
    public boolean m160b(int i) {
        return this.f1163a.test(i);
    }
}
