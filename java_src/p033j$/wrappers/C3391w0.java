package p033j$.wrappers;

import p033j$.util.function.Predicate;
/* renamed from: j$.wrappers.w0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3391w0 implements Predicate {

    /* renamed from: a */
    final /* synthetic */ java.util.function.Predicate f1309a;

    private /* synthetic */ C3391w0(java.util.function.Predicate predicate) {
        this.f1309a = predicate;
    }

    /* renamed from: a */
    public static /* synthetic */ Predicate m111a(java.util.function.Predicate predicate) {
        if (predicate == null) {
            return null;
        }
        return predicate instanceof C3393x0 ? ((C3393x0) predicate).f1311a : new C3391w0(predicate);
    }

    @Override // p033j$.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        return m111a(this.f1309a.and(C3393x0.m109a(predicate)));
    }

    @Override // p033j$.util.function.Predicate
    public /* synthetic */ Predicate negate() {
        return m111a(this.f1309a.negate());
    }

    @Override // p033j$.util.function.Predicate
    /* renamed from: or */
    public /* synthetic */ Predicate mo25or(Predicate predicate) {
        return m111a(this.f1309a.or(C3393x0.m109a(predicate)));
    }

    @Override // p033j$.util.function.Predicate
    public /* synthetic */ boolean test(Object obj) {
        return this.f1309a.test(obj);
    }
}
