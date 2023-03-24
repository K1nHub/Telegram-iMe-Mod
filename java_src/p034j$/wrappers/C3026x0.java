package p034j$.wrappers;

import java.util.function.Predicate;
/* renamed from: j$.wrappers.x0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3026x0 implements Predicate {

    /* renamed from: a */
    final /* synthetic */ p034j$.util.function.Predicate f1213a;

    private /* synthetic */ C3026x0(p034j$.util.function.Predicate predicate) {
        this.f1213a = predicate;
    }

    /* renamed from: a */
    public static /* synthetic */ Predicate m105a(p034j$.util.function.Predicate predicate) {
        if (predicate == null) {
            return null;
        }
        return predicate instanceof C3024w0 ? ((C3024w0) predicate).f1211a : new C3026x0(predicate);
    }

    @Override // java.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        return m105a(this.f1213a.and(C3024w0.m107a(predicate)));
    }

    @Override // java.util.function.Predicate
    public /* synthetic */ Predicate negate() {
        return m105a(this.f1213a.negate());
    }

    @Override // java.util.function.Predicate
    public /* synthetic */ Predicate or(Predicate predicate) {
        return m105a(this.f1213a.mo21or(C3024w0.m107a(predicate)));
    }

    @Override // java.util.function.Predicate
    public /* synthetic */ boolean test(Object obj) {
        return this.f1213a.test(obj);
    }
}
