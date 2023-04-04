package p035j$.wrappers;

import java.util.function.IntPredicate;
/* renamed from: j$.wrappers.U */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3049U {

    /* renamed from: a */
    final /* synthetic */ IntPredicate f1165a;

    private /* synthetic */ C3049U(IntPredicate intPredicate) {
        this.f1165a = intPredicate;
    }

    /* renamed from: a */
    public static /* synthetic */ C3049U m170a(IntPredicate intPredicate) {
        if (intPredicate == null) {
            return null;
        }
        return intPredicate instanceof AbstractC3050V ? ((AbstractC3050V) intPredicate).f1166a : new C3049U(intPredicate);
    }

    /* renamed from: b */
    public boolean m169b(int i) {
        return this.f1165a.test(i);
    }
}
