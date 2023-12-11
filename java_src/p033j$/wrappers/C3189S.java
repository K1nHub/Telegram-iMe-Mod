package p033j$.wrappers;

import java.util.function.IntPredicate;
/* renamed from: j$.wrappers.S */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3189S {

    /* renamed from: a */
    final /* synthetic */ IntPredicate f1291a;

    private /* synthetic */ C3189S(IntPredicate intPredicate) {
        this.f1291a = intPredicate;
    }

    /* renamed from: a */
    public static /* synthetic */ C3189S m231a(IntPredicate intPredicate) {
        if (intPredicate == null) {
            return null;
        }
        return intPredicate instanceof AbstractC3190T ? ((AbstractC3190T) intPredicate).f1292a : new C3189S(intPredicate);
    }

    /* renamed from: b */
    public boolean m230b(int i) {
        return this.f1291a.test(i);
    }
}
