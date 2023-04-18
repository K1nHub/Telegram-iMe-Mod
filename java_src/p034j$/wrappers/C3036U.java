package p034j$.wrappers;

import java.util.function.IntPredicate;
/* renamed from: j$.wrappers.U */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3036U {

    /* renamed from: a */
    final /* synthetic */ IntPredicate f1160a;

    private /* synthetic */ C3036U(IntPredicate intPredicate) {
        this.f1160a = intPredicate;
    }

    /* renamed from: a */
    public static /* synthetic */ C3036U m156a(IntPredicate intPredicate) {
        if (intPredicate == null) {
            return null;
        }
        return intPredicate instanceof AbstractC3037V ? ((AbstractC3037V) intPredicate).f1161a : new C3036U(intPredicate);
    }

    /* renamed from: b */
    public boolean m155b(int i) {
        return this.f1160a.test(i);
    }
}
