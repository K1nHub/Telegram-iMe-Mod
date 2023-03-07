package p034j$.wrappers;

import java.util.function.Predicate;
/* renamed from: j$.wrappers.x0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2888x0 implements Predicate {

    /* renamed from: a */
    final /* synthetic */ p034j$.util.function.Predicate f1207a;

    private /* synthetic */ C2888x0(p034j$.util.function.Predicate predicate) {
        this.f1207a = predicate;
    }

    /* renamed from: a */
    public static /* synthetic */ Predicate m106a(p034j$.util.function.Predicate predicate) {
        if (predicate == null) {
            return null;
        }
        return predicate instanceof C2886w0 ? ((C2886w0) predicate).f1205a : new C2888x0(predicate);
    }

    @Override // java.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        return m106a(this.f1207a.and(C2886w0.m108a(predicate)));
    }

    @Override // java.util.function.Predicate
    public /* synthetic */ Predicate negate() {
        return m106a(this.f1207a.negate());
    }

    @Override // java.util.function.Predicate
    public /* synthetic */ Predicate or(Predicate predicate) {
        return m106a(this.f1207a.mo21or(C2886w0.m108a(predicate)));
    }

    @Override // java.util.function.Predicate
    public /* synthetic */ boolean test(Object obj) {
        return this.f1207a.test(obj);
    }
}
