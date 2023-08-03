package p033j$.wrappers;

import java.util.function.IntPredicate;
/* renamed from: j$.wrappers.U */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3201U {

    /* renamed from: a */
    final /* synthetic */ IntPredicate f1248a;

    private /* synthetic */ C3201U(IntPredicate intPredicate) {
        this.f1248a = intPredicate;
    }

    /* renamed from: a */
    public static /* synthetic */ C3201U m179a(IntPredicate intPredicate) {
        if (intPredicate == null) {
            return null;
        }
        return intPredicate instanceof AbstractC3202V ? ((AbstractC3202V) intPredicate).f1249a : new C3201U(intPredicate);
    }

    /* renamed from: b */
    public boolean m178b(int i) {
        return this.f1248a.test(i);
    }
}
