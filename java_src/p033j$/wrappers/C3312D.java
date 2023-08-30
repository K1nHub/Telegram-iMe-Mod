package p033j$.wrappers;

import java.util.function.DoublePredicate;
/* renamed from: j$.wrappers.D */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3312D {

    /* renamed from: a */
    final /* synthetic */ DoublePredicate f1230a;

    private /* synthetic */ C3312D(DoublePredicate doublePredicate) {
        this.f1230a = doublePredicate;
    }

    /* renamed from: a */
    public static /* synthetic */ C3312D m244a(DoublePredicate doublePredicate) {
        if (doublePredicate == null) {
            return null;
        }
        return doublePredicate instanceof AbstractC3314E ? ((AbstractC3314E) doublePredicate).f1232a : new C3312D(doublePredicate);
    }

    /* renamed from: b */
    public boolean m243b(double d) {
        return this.f1230a.test(d);
    }
}
