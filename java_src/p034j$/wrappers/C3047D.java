package p034j$.wrappers;

import java.util.function.DoublePredicate;
/* renamed from: j$.wrappers.D */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3047D {

    /* renamed from: a */
    final /* synthetic */ DoublePredicate f1135a;

    private /* synthetic */ C3047D(DoublePredicate doublePredicate) {
        this.f1135a = doublePredicate;
    }

    /* renamed from: a */
    public static /* synthetic */ C3047D m226a(DoublePredicate doublePredicate) {
        if (doublePredicate == null) {
            return null;
        }
        return doublePredicate instanceof AbstractC3049E ? ((AbstractC3049E) doublePredicate).f1137a : new C3047D(doublePredicate);
    }

    /* renamed from: b */
    public boolean m225b(double d) {
        return this.f1135a.test(d);
    }
}
