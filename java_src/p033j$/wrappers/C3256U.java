package p033j$.wrappers;

import java.util.function.IntPredicate;
/* renamed from: j$.wrappers.U */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3256U {

    /* renamed from: a */
    final /* synthetic */ IntPredicate f1249a;

    private /* synthetic */ C3256U(IntPredicate intPredicate) {
        this.f1249a = intPredicate;
    }

    /* renamed from: a */
    public static /* synthetic */ C3256U m179a(IntPredicate intPredicate) {
        if (intPredicate == null) {
            return null;
        }
        return intPredicate instanceof AbstractC3257V ? ((AbstractC3257V) intPredicate).f1250a : new C3256U(intPredicate);
    }

    /* renamed from: b */
    public boolean m178b(int i) {
        return this.f1249a.test(i);
    }
}
