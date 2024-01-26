package p033j$.wrappers;

import java.util.function.IntPredicate;
/* renamed from: j$.wrappers.S */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3187S {

    /* renamed from: a */
    final /* synthetic */ IntPredicate f1291a;

    private /* synthetic */ C3187S(IntPredicate intPredicate) {
        this.f1291a = intPredicate;
    }

    /* renamed from: a */
    public static /* synthetic */ C3187S m234a(IntPredicate intPredicate) {
        if (intPredicate == null) {
            return null;
        }
        return intPredicate instanceof AbstractC3188T ? ((AbstractC3188T) intPredicate).f1292a : new C3187S(intPredicate);
    }

    /* renamed from: b */
    public boolean m233b(int i) {
        return this.f1291a.test(i);
    }
}
