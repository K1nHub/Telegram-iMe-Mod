package p034j$.wrappers;

import p034j$.util.function.Predicate;
/* renamed from: j$.wrappers.w0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3010w0 implements Predicate {

    /* renamed from: a */
    final /* synthetic */ java.util.function.Predicate f1210a;

    private /* synthetic */ C3010w0(java.util.function.Predicate predicate) {
        this.f1210a = predicate;
    }

    /* renamed from: a */
    public static /* synthetic */ Predicate m108a(java.util.function.Predicate predicate) {
        if (predicate == null) {
            return null;
        }
        return predicate instanceof C3012x0 ? ((C3012x0) predicate).f1212a : new C3010w0(predicate);
    }

    @Override // p034j$.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        return m108a(this.f1210a.and(C3012x0.m106a(predicate)));
    }

    @Override // p034j$.util.function.Predicate
    public /* synthetic */ Predicate negate() {
        return m108a(this.f1210a.negate());
    }

    @Override // p034j$.util.function.Predicate
    /* renamed from: or */
    public /* synthetic */ Predicate mo21or(Predicate predicate) {
        return m108a(this.f1210a.or(C3012x0.m106a(predicate)));
    }

    @Override // p034j$.util.function.Predicate
    public /* synthetic */ boolean test(Object obj) {
        return this.f1210a.test(obj);
    }
}
