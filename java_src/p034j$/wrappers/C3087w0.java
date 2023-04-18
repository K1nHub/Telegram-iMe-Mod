package p034j$.wrappers;

import p034j$.util.function.Predicate;
/* renamed from: j$.wrappers.w0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3087w0 implements Predicate {

    /* renamed from: a */
    final /* synthetic */ java.util.function.Predicate f1211a;

    private /* synthetic */ C3087w0(java.util.function.Predicate predicate) {
        this.f1211a = predicate;
    }

    /* renamed from: a */
    public static /* synthetic */ Predicate m88a(java.util.function.Predicate predicate) {
        if (predicate == null) {
            return null;
        }
        return predicate instanceof C3089x0 ? ((C3089x0) predicate).f1213a : new C3087w0(predicate);
    }

    @Override // p034j$.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        return m88a(this.f1211a.and(C3089x0.m86a(predicate)));
    }

    @Override // p034j$.util.function.Predicate
    public /* synthetic */ Predicate negate() {
        return m88a(this.f1211a.negate());
    }

    @Override // p034j$.util.function.Predicate
    /* renamed from: or */
    public /* synthetic */ Predicate mo21or(Predicate predicate) {
        return m88a(this.f1211a.or(C3089x0.m86a(predicate)));
    }

    @Override // p034j$.util.function.Predicate
    public /* synthetic */ boolean test(Object obj) {
        return this.f1211a.test(obj);
    }
}
