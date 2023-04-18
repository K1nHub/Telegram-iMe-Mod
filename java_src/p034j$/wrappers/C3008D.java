package p034j$.wrappers;

import java.util.function.DoublePredicate;
/* renamed from: j$.wrappers.D */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3008D {

    /* renamed from: a */
    final /* synthetic */ DoublePredicate f1132a;

    private /* synthetic */ C3008D(DoublePredicate doublePredicate) {
        this.f1132a = doublePredicate;
    }

    /* renamed from: a */
    public static /* synthetic */ C3008D m221a(DoublePredicate doublePredicate) {
        if (doublePredicate == null) {
            return null;
        }
        return doublePredicate instanceof AbstractC3010E ? ((AbstractC3010E) doublePredicate).f1134a : new C3008D(doublePredicate);
    }

    /* renamed from: b */
    public boolean m220b(double d) {
        return this.f1132a.test(d);
    }
}
