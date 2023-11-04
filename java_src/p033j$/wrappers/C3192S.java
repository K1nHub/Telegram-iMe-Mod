package p033j$.wrappers;

import java.util.function.IntPredicate;
/* renamed from: j$.wrappers.S */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3192S {

    /* renamed from: a */
    final /* synthetic */ IntPredicate f1291a;

    private /* synthetic */ C3192S(IntPredicate intPredicate) {
        this.f1291a = intPredicate;
    }

    /* renamed from: a */
    public static /* synthetic */ C3192S m231a(IntPredicate intPredicate) {
        if (intPredicate == null) {
            return null;
        }
        return intPredicate instanceof AbstractC3193T ? ((AbstractC3193T) intPredicate).f1292a : new C3192S(intPredicate);
    }

    /* renamed from: b */
    public boolean m230b(int i) {
        return this.f1291a.test(i);
    }
}
