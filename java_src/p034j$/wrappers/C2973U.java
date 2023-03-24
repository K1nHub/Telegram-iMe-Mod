package p034j$.wrappers;

import java.util.function.IntPredicate;
/* renamed from: j$.wrappers.U */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2973U {

    /* renamed from: a */
    final /* synthetic */ IntPredicate f1160a;

    private /* synthetic */ C2973U(IntPredicate intPredicate) {
        this.f1160a = intPredicate;
    }

    /* renamed from: a */
    public static /* synthetic */ C2973U m175a(IntPredicate intPredicate) {
        if (intPredicate == null) {
            return null;
        }
        return intPredicate instanceof AbstractC2974V ? ((AbstractC2974V) intPredicate).f1161a : new C2973U(intPredicate);
    }

    /* renamed from: b */
    public boolean m174b(int i) {
        return this.f1160a.test(i);
    }
}
