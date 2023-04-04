package p035j$.wrappers;

import java.util.function.DoublePredicate;
/* renamed from: j$.wrappers.D */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3021D {

    /* renamed from: a */
    final /* synthetic */ DoublePredicate f1137a;

    private /* synthetic */ C3021D(DoublePredicate doublePredicate) {
        this.f1137a = doublePredicate;
    }

    /* renamed from: a */
    public static /* synthetic */ C3021D m235a(DoublePredicate doublePredicate) {
        if (doublePredicate == null) {
            return null;
        }
        return doublePredicate instanceof AbstractC3023E ? ((AbstractC3023E) doublePredicate).f1139a : new C3021D(doublePredicate);
    }

    /* renamed from: b */
    public boolean m234b(double d) {
        return this.f1137a.test(d);
    }
}
