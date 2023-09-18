package p033j$.wrappers;

import java.util.function.DoublePredicate;
/* renamed from: j$.wrappers.D */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3228D {

    /* renamed from: a */
    final /* synthetic */ DoublePredicate f1221a;

    private /* synthetic */ C3228D(DoublePredicate doublePredicate) {
        this.f1221a = doublePredicate;
    }

    /* renamed from: a */
    public static /* synthetic */ C3228D m244a(DoublePredicate doublePredicate) {
        if (doublePredicate == null) {
            return null;
        }
        return doublePredicate instanceof AbstractC3230E ? ((AbstractC3230E) doublePredicate).f1223a : new C3228D(doublePredicate);
    }

    /* renamed from: b */
    public boolean m243b(double d) {
        return this.f1221a.test(d);
    }
}
