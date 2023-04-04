package p035j$.wrappers;

import java.util.function.Predicate;
/* renamed from: j$.wrappers.x0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3102x0 implements Predicate {

    /* renamed from: a */
    final /* synthetic */ p035j$.util.function.Predicate f1218a;

    private /* synthetic */ C3102x0(p035j$.util.function.Predicate predicate) {
        this.f1218a = predicate;
    }

    /* renamed from: a */
    public static /* synthetic */ Predicate m100a(p035j$.util.function.Predicate predicate) {
        if (predicate == null) {
            return null;
        }
        return predicate instanceof C3100w0 ? ((C3100w0) predicate).f1216a : new C3102x0(predicate);
    }

    @Override // java.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        return m100a(this.f1218a.and(C3100w0.m102a(predicate)));
    }

    @Override // java.util.function.Predicate
    public /* synthetic */ Predicate negate() {
        return m100a(this.f1218a.negate());
    }

    @Override // java.util.function.Predicate
    public /* synthetic */ Predicate or(Predicate predicate) {
        return m100a(this.f1218a.mo21or(C3100w0.m102a(predicate)));
    }

    @Override // java.util.function.Predicate
    public /* synthetic */ boolean test(Object obj) {
        return this.f1218a.test(obj);
    }
}
