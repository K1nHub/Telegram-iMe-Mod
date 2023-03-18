package p034j$.wrappers;

import java.util.function.IntPredicate;
/* renamed from: j$.wrappers.U */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2959U {

    /* renamed from: a */
    final /* synthetic */ IntPredicate f1159a;

    private /* synthetic */ C2959U(IntPredicate intPredicate) {
        this.f1159a = intPredicate;
    }

    /* renamed from: a */
    public static /* synthetic */ C2959U m176a(IntPredicate intPredicate) {
        if (intPredicate == null) {
            return null;
        }
        return intPredicate instanceof AbstractC2960V ? ((AbstractC2960V) intPredicate).f1160a : new C2959U(intPredicate);
    }

    /* renamed from: b */
    public boolean m175b(int i) {
        return this.f1159a.test(i);
    }
}
