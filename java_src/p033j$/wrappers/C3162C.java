package p033j$.wrappers;

import java.util.function.DoublePredicate;
/* renamed from: j$.wrappers.C */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3162C {

    /* renamed from: a */
    final /* synthetic */ DoublePredicate f1266a;

    private /* synthetic */ C3162C(DoublePredicate doublePredicate) {
        this.f1266a = doublePredicate;
    }

    /* renamed from: a */
    public static /* synthetic */ C3162C m296a(DoublePredicate doublePredicate) {
        if (doublePredicate == null) {
            return null;
        }
        return doublePredicate instanceof AbstractC3164D ? ((AbstractC3164D) doublePredicate).f1268a : new C3162C(doublePredicate);
    }

    /* renamed from: b */
    public boolean m295b(double d) {
        return this.f1266a.test(d);
    }
}
