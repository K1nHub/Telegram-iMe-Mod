package p034j$.wrappers;

import java.util.function.Predicate;
/* renamed from: j$.wrappers.x0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3133x0 implements Predicate {

    /* renamed from: a */
    final /* synthetic */ p034j$.util.function.Predicate f1216a;

    private /* synthetic */ C3133x0(p034j$.util.function.Predicate predicate) {
        this.f1216a = predicate;
    }

    /* renamed from: a */
    public static /* synthetic */ Predicate m91a(p034j$.util.function.Predicate predicate) {
        if (predicate == null) {
            return null;
        }
        return predicate instanceof C3131w0 ? ((C3131w0) predicate).f1214a : new C3133x0(predicate);
    }

    @Override // java.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        return m91a(this.f1216a.and(C3131w0.m93a(predicate)));
    }

    @Override // java.util.function.Predicate
    public /* synthetic */ Predicate negate() {
        return m91a(this.f1216a.negate());
    }

    @Override // java.util.function.Predicate
    public /* synthetic */ Predicate or(Predicate predicate) {
        return m91a(this.f1216a.mo23or(C3131w0.m93a(predicate)));
    }

    @Override // java.util.function.Predicate
    public /* synthetic */ boolean test(Object obj) {
        return this.f1216a.test(obj);
    }
}