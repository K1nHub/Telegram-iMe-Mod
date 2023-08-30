package p033j$.wrappers;

import java.util.function.Predicate;
/* renamed from: j$.wrappers.x0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3393x0 implements Predicate {

    /* renamed from: a */
    final /* synthetic */ p033j$.util.function.Predicate f1311a;

    private /* synthetic */ C3393x0(p033j$.util.function.Predicate predicate) {
        this.f1311a = predicate;
    }

    /* renamed from: a */
    public static /* synthetic */ Predicate m109a(p033j$.util.function.Predicate predicate) {
        if (predicate == null) {
            return null;
        }
        return predicate instanceof C3391w0 ? ((C3391w0) predicate).f1309a : new C3393x0(predicate);
    }

    @Override // java.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        return m109a(this.f1311a.and(C3391w0.m111a(predicate)));
    }

    @Override // java.util.function.Predicate
    public /* synthetic */ Predicate negate() {
        return m109a(this.f1311a.negate());
    }

    @Override // java.util.function.Predicate
    public /* synthetic */ Predicate or(Predicate predicate) {
        return m109a(this.f1311a.mo25or(C3391w0.m111a(predicate)));
    }

    @Override // java.util.function.Predicate
    public /* synthetic */ boolean test(Object obj) {
        return this.f1311a.test(obj);
    }
}
