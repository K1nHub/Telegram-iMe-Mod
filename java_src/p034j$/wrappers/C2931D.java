package p034j$.wrappers;

import java.util.function.DoublePredicate;
/* renamed from: j$.wrappers.D */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2931D {

    /* renamed from: a */
    final /* synthetic */ DoublePredicate f1131a;

    private /* synthetic */ C2931D(DoublePredicate doublePredicate) {
        this.f1131a = doublePredicate;
    }

    /* renamed from: a */
    public static /* synthetic */ C2931D m241a(DoublePredicate doublePredicate) {
        if (doublePredicate == null) {
            return null;
        }
        return doublePredicate instanceof AbstractC2933E ? ((AbstractC2933E) doublePredicate).f1133a : new C2931D(doublePredicate);
    }

    /* renamed from: b */
    public boolean m240b(double d) {
        return this.f1131a.test(d);
    }
}
