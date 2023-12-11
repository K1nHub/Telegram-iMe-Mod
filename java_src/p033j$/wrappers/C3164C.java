package p033j$.wrappers;

import java.util.function.DoublePredicate;
/* renamed from: j$.wrappers.C */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3164C {

    /* renamed from: a */
    final /* synthetic */ DoublePredicate f1266a;

    private /* synthetic */ C3164C(DoublePredicate doublePredicate) {
        this.f1266a = doublePredicate;
    }

    /* renamed from: a */
    public static /* synthetic */ C3164C m293a(DoublePredicate doublePredicate) {
        if (doublePredicate == null) {
            return null;
        }
        return doublePredicate instanceof AbstractC3166D ? ((AbstractC3166D) doublePredicate).f1268a : new C3164C(doublePredicate);
    }

    /* renamed from: b */
    public boolean m292b(double d) {
        return this.f1266a.test(d);
    }
}
