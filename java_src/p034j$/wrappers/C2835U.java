package p034j$.wrappers;

import java.util.function.IntPredicate;
/* renamed from: j$.wrappers.U */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2835U {

    /* renamed from: a */
    final /* synthetic */ IntPredicate f1154a;

    private /* synthetic */ C2835U(IntPredicate intPredicate) {
        this.f1154a = intPredicate;
    }

    /* renamed from: a */
    public static /* synthetic */ C2835U m176a(IntPredicate intPredicate) {
        if (intPredicate == null) {
            return null;
        }
        return intPredicate instanceof AbstractC2836V ? ((AbstractC2836V) intPredicate).f1155a : new C2835U(intPredicate);
    }

    /* renamed from: b */
    public boolean m175b(int i) {
        return this.f1154a.test(i);
    }
}
