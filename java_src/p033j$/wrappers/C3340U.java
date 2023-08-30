package p033j$.wrappers;

import java.util.function.IntPredicate;
/* renamed from: j$.wrappers.U */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3340U {

    /* renamed from: a */
    final /* synthetic */ IntPredicate f1258a;

    private /* synthetic */ C3340U(IntPredicate intPredicate) {
        this.f1258a = intPredicate;
    }

    /* renamed from: a */
    public static /* synthetic */ C3340U m179a(IntPredicate intPredicate) {
        if (intPredicate == null) {
            return null;
        }
        return intPredicate instanceof AbstractC3341V ? ((AbstractC3341V) intPredicate).f1259a : new C3340U(intPredicate);
    }

    /* renamed from: b */
    public boolean m178b(int i) {
        return this.f1258a.test(i);
    }
}
