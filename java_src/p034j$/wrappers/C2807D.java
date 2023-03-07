package p034j$.wrappers;

import java.util.function.DoublePredicate;
/* renamed from: j$.wrappers.D */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2807D {

    /* renamed from: a */
    final /* synthetic */ DoublePredicate f1126a;

    private /* synthetic */ C2807D(DoublePredicate doublePredicate) {
        this.f1126a = doublePredicate;
    }

    /* renamed from: a */
    public static /* synthetic */ C2807D m241a(DoublePredicate doublePredicate) {
        if (doublePredicate == null) {
            return null;
        }
        return doublePredicate instanceof AbstractC2809E ? ((AbstractC2809E) doublePredicate).f1128a : new C2807D(doublePredicate);
    }

    /* renamed from: b */
    public boolean m240b(double d) {
        return this.f1126a.test(d);
    }
}
