package p033j$.wrappers;

import java.util.function.Predicate;
/* renamed from: j$.wrappers.x0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3254x0 implements Predicate {

    /* renamed from: a */
    final /* synthetic */ p033j$.util.function.Predicate f1298a;

    private /* synthetic */ C3254x0(p033j$.util.function.Predicate predicate) {
        this.f1298a = predicate;
    }

    /* renamed from: a */
    public static /* synthetic */ Predicate m91a(p033j$.util.function.Predicate predicate) {
        if (predicate == null) {
            return null;
        }
        return predicate instanceof C3252w0 ? ((C3252w0) predicate).f1296a : new C3254x0(predicate);
    }

    @Override // java.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        return m91a(this.f1298a.and(C3252w0.m93a(predicate)));
    }

    @Override // java.util.function.Predicate
    public /* synthetic */ Predicate negate() {
        return m91a(this.f1298a.negate());
    }

    @Override // java.util.function.Predicate
    public /* synthetic */ Predicate or(Predicate predicate) {
        return m91a(this.f1298a.mo23or(C3252w0.m93a(predicate)));
    }

    @Override // java.util.function.Predicate
    public /* synthetic */ boolean test(Object obj) {
        return this.f1298a.test(obj);
    }
}
