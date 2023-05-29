package p034j$.wrappers;

import p034j$.util.function.Predicate;
/* renamed from: j$.wrappers.w0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3131w0 implements Predicate {

    /* renamed from: a */
    final /* synthetic */ java.util.function.Predicate f1214a;

    private /* synthetic */ C3131w0(java.util.function.Predicate predicate) {
        this.f1214a = predicate;
    }

    /* renamed from: a */
    public static /* synthetic */ Predicate m93a(java.util.function.Predicate predicate) {
        if (predicate == null) {
            return null;
        }
        return predicate instanceof C3133x0 ? ((C3133x0) predicate).f1216a : new C3131w0(predicate);
    }

    @Override // p034j$.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        return m93a(this.f1214a.and(C3133x0.m91a(predicate)));
    }

    @Override // p034j$.util.function.Predicate
    public /* synthetic */ Predicate negate() {
        return m93a(this.f1214a.negate());
    }

    @Override // p034j$.util.function.Predicate
    /* renamed from: or */
    public /* synthetic */ Predicate mo23or(Predicate predicate) {
        return m93a(this.f1214a.or(C3133x0.m91a(predicate)));
    }

    @Override // p034j$.util.function.Predicate
    public /* synthetic */ boolean test(Object obj) {
        return this.f1214a.test(obj);
    }
}
