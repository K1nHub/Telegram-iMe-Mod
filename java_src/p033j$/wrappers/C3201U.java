package p033j$.wrappers;

import java.util.function.IntPredicate;
/* renamed from: j$.wrappers.U */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3201U {

    /* renamed from: a */
    final /* synthetic */ IntPredicate f1245a;

    private /* synthetic */ C3201U(IntPredicate intPredicate) {
        this.f1245a = intPredicate;
    }

    /* renamed from: a */
    public static /* synthetic */ C3201U m161a(IntPredicate intPredicate) {
        if (intPredicate == null) {
            return null;
        }
        return intPredicate instanceof AbstractC3202V ? ((AbstractC3202V) intPredicate).f1246a : new C3201U(intPredicate);
    }

    /* renamed from: b */
    public boolean m160b(int i) {
        return this.f1245a.test(i);
    }
}
