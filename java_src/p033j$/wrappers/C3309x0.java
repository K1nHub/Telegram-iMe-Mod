package p033j$.wrappers;

import java.util.function.Predicate;
/* renamed from: j$.wrappers.x0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3309x0 implements Predicate {

    /* renamed from: a */
    final /* synthetic */ p033j$.util.function.Predicate f1302a;

    private /* synthetic */ C3309x0(p033j$.util.function.Predicate predicate) {
        this.f1302a = predicate;
    }

    /* renamed from: a */
    public static /* synthetic */ Predicate m109a(p033j$.util.function.Predicate predicate) {
        if (predicate == null) {
            return null;
        }
        return predicate instanceof C3307w0 ? ((C3307w0) predicate).f1300a : new C3309x0(predicate);
    }

    @Override // java.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        return m109a(this.f1302a.and(C3307w0.m111a(predicate)));
    }

    @Override // java.util.function.Predicate
    public /* synthetic */ Predicate negate() {
        return m109a(this.f1302a.negate());
    }

    @Override // java.util.function.Predicate
    public /* synthetic */ Predicate or(Predicate predicate) {
        return m109a(this.f1302a.mo25or(C3307w0.m111a(predicate)));
    }

    @Override // java.util.function.Predicate
    public /* synthetic */ boolean test(Object obj) {
        return this.f1302a.test(obj);
    }
}
