package p034j$.wrappers;

import p034j$.util.function.Predicate;
/* renamed from: j$.wrappers.w0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2886w0 implements Predicate {

    /* renamed from: a */
    final /* synthetic */ java.util.function.Predicate f1205a;

    private /* synthetic */ C2886w0(java.util.function.Predicate predicate) {
        this.f1205a = predicate;
    }

    /* renamed from: a */
    public static /* synthetic */ Predicate m108a(java.util.function.Predicate predicate) {
        if (predicate == null) {
            return null;
        }
        return predicate instanceof C2888x0 ? ((C2888x0) predicate).f1207a : new C2886w0(predicate);
    }

    @Override // p034j$.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        return m108a(this.f1205a.and(C2888x0.m106a(predicate)));
    }

    @Override // p034j$.util.function.Predicate
    public /* synthetic */ Predicate negate() {
        return m108a(this.f1205a.negate());
    }

    @Override // p034j$.util.function.Predicate
    /* renamed from: or */
    public /* synthetic */ Predicate mo21or(Predicate predicate) {
        return m108a(this.f1205a.or(C2888x0.m106a(predicate)));
    }

    @Override // p034j$.util.function.Predicate
    public /* synthetic */ boolean test(Object obj) {
        return this.f1205a.test(obj);
    }
}
