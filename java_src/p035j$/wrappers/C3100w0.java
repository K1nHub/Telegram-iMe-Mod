package p035j$.wrappers;

import p035j$.util.function.Predicate;
/* renamed from: j$.wrappers.w0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3100w0 implements Predicate {

    /* renamed from: a */
    final /* synthetic */ java.util.function.Predicate f1216a;

    private /* synthetic */ C3100w0(java.util.function.Predicate predicate) {
        this.f1216a = predicate;
    }

    /* renamed from: a */
    public static /* synthetic */ Predicate m102a(java.util.function.Predicate predicate) {
        if (predicate == null) {
            return null;
        }
        return predicate instanceof C3102x0 ? ((C3102x0) predicate).f1218a : new C3100w0(predicate);
    }

    @Override // p035j$.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        return m102a(this.f1216a.and(C3102x0.m100a(predicate)));
    }

    @Override // p035j$.util.function.Predicate
    public /* synthetic */ Predicate negate() {
        return m102a(this.f1216a.negate());
    }

    @Override // p035j$.util.function.Predicate
    /* renamed from: or */
    public /* synthetic */ Predicate mo21or(Predicate predicate) {
        return m102a(this.f1216a.or(C3102x0.m100a(predicate)));
    }

    @Override // p035j$.util.function.Predicate
    public /* synthetic */ boolean test(Object obj) {
        return this.f1216a.test(obj);
    }
}
