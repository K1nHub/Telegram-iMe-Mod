package p034j$.wrappers;

import java.util.function.DoublePredicate;
/* renamed from: j$.wrappers.D */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3052D {

    /* renamed from: a */
    final /* synthetic */ DoublePredicate f1135a;

    private /* synthetic */ C3052D(DoublePredicate doublePredicate) {
        this.f1135a = doublePredicate;
    }

    /* renamed from: a */
    public static /* synthetic */ C3052D m226a(DoublePredicate doublePredicate) {
        if (doublePredicate == null) {
            return null;
        }
        return doublePredicate instanceof AbstractC3054E ? ((AbstractC3054E) doublePredicate).f1137a : new C3052D(doublePredicate);
    }

    /* renamed from: b */
    public boolean m225b(double d) {
        return this.f1135a.test(d);
    }
}
