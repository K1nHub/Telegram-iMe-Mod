package p033j$.wrappers;

import java.util.function.IntPredicate;
/* renamed from: j$.wrappers.S */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3188S {

    /* renamed from: a */
    final /* synthetic */ IntPredicate f1291a;

    private /* synthetic */ C3188S(IntPredicate intPredicate) {
        this.f1291a = intPredicate;
    }

    /* renamed from: a */
    public static /* synthetic */ C3188S m230a(IntPredicate intPredicate) {
        if (intPredicate == null) {
            return null;
        }
        return intPredicate instanceof AbstractC3189T ? ((AbstractC3189T) intPredicate).f1292a : new C3188S(intPredicate);
    }

    /* renamed from: b */
    public boolean m229b(int i) {
        return this.f1291a.test(i);
    }
}
