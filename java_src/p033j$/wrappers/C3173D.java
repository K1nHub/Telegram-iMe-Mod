package p033j$.wrappers;

import java.util.function.DoublePredicate;
/* renamed from: j$.wrappers.D */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3173D {

    /* renamed from: a */
    final /* synthetic */ DoublePredicate f1217a;

    private /* synthetic */ C3173D(DoublePredicate doublePredicate) {
        this.f1217a = doublePredicate;
    }

    /* renamed from: a */
    public static /* synthetic */ C3173D m226a(DoublePredicate doublePredicate) {
        if (doublePredicate == null) {
            return null;
        }
        return doublePredicate instanceof AbstractC3175E ? ((AbstractC3175E) doublePredicate).f1219a : new C3173D(doublePredicate);
    }

    /* renamed from: b */
    public boolean m225b(double d) {
        return this.f1217a.test(d);
    }
}
