package p034j$.wrappers;

import java.util.function.DoublePredicate;
/* renamed from: j$.wrappers.D */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2945D {

    /* renamed from: a */
    final /* synthetic */ DoublePredicate f1132a;

    private /* synthetic */ C2945D(DoublePredicate doublePredicate) {
        this.f1132a = doublePredicate;
    }

    /* renamed from: a */
    public static /* synthetic */ C2945D m240a(DoublePredicate doublePredicate) {
        if (doublePredicate == null) {
            return null;
        }
        return doublePredicate instanceof AbstractC2947E ? ((AbstractC2947E) doublePredicate).f1134a : new C2945D(doublePredicate);
    }

    /* renamed from: b */
    public boolean m239b(double d) {
        return this.f1132a.test(d);
    }
}
