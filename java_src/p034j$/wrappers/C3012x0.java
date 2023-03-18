package p034j$.wrappers;

import java.util.function.Predicate;
/* renamed from: j$.wrappers.x0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3012x0 implements Predicate {

    /* renamed from: a */
    final /* synthetic */ p034j$.util.function.Predicate f1212a;

    private /* synthetic */ C3012x0(p034j$.util.function.Predicate predicate) {
        this.f1212a = predicate;
    }

    /* renamed from: a */
    public static /* synthetic */ Predicate m106a(p034j$.util.function.Predicate predicate) {
        if (predicate == null) {
            return null;
        }
        return predicate instanceof C3010w0 ? ((C3010w0) predicate).f1210a : new C3012x0(predicate);
    }

    @Override // java.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        return m106a(this.f1212a.and(C3010w0.m108a(predicate)));
    }

    @Override // java.util.function.Predicate
    public /* synthetic */ Predicate negate() {
        return m106a(this.f1212a.negate());
    }

    @Override // java.util.function.Predicate
    public /* synthetic */ Predicate or(Predicate predicate) {
        return m106a(this.f1212a.mo21or(C3010w0.m108a(predicate)));
    }

    @Override // java.util.function.Predicate
    public /* synthetic */ boolean test(Object obj) {
        return this.f1212a.test(obj);
    }
}
