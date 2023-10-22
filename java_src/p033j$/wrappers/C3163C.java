package p033j$.wrappers;

import java.util.function.DoublePredicate;
/* renamed from: j$.wrappers.C */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3163C {

    /* renamed from: a */
    final /* synthetic */ DoublePredicate f1266a;

    private /* synthetic */ C3163C(DoublePredicate doublePredicate) {
        this.f1266a = doublePredicate;
    }

    /* renamed from: a */
    public static /* synthetic */ C3163C m292a(DoublePredicate doublePredicate) {
        if (doublePredicate == null) {
            return null;
        }
        return doublePredicate instanceof AbstractC3165D ? ((AbstractC3165D) doublePredicate).f1268a : new C3163C(doublePredicate);
    }

    /* renamed from: b */
    public boolean m291b(double d) {
        return this.f1266a.test(d);
    }
}
