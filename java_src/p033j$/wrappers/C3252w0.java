package p033j$.wrappers;

import p033j$.util.function.Predicate;
/* renamed from: j$.wrappers.w0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3252w0 implements Predicate {

    /* renamed from: a */
    final /* synthetic */ java.util.function.Predicate f1296a;

    private /* synthetic */ C3252w0(java.util.function.Predicate predicate) {
        this.f1296a = predicate;
    }

    /* renamed from: a */
    public static /* synthetic */ Predicate m93a(java.util.function.Predicate predicate) {
        if (predicate == null) {
            return null;
        }
        return predicate instanceof C3254x0 ? ((C3254x0) predicate).f1298a : new C3252w0(predicate);
    }

    @Override // p033j$.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        return m93a(this.f1296a.and(C3254x0.m91a(predicate)));
    }

    @Override // p033j$.util.function.Predicate
    public /* synthetic */ Predicate negate() {
        return m93a(this.f1296a.negate());
    }

    @Override // p033j$.util.function.Predicate
    /* renamed from: or */
    public /* synthetic */ Predicate mo23or(Predicate predicate) {
        return m93a(this.f1296a.or(C3254x0.m91a(predicate)));
    }

    @Override // p033j$.util.function.Predicate
    public /* synthetic */ boolean test(Object obj) {
        return this.f1296a.test(obj);
    }
}
