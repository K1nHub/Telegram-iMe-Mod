package p033j$.wrappers;

import java.util.function.Predicate;
/* renamed from: j$.wrappers.u0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3238u0 implements Predicate {

    /* renamed from: a */
    final /* synthetic */ p033j$.util.function.Predicate f1340a;

    private /* synthetic */ C3238u0(p033j$.util.function.Predicate predicate) {
        this.f1340a = predicate;
    }

    /* renamed from: a */
    public static /* synthetic */ Predicate m166a(p033j$.util.function.Predicate predicate) {
        if (predicate == null) {
            return null;
        }
        return predicate instanceof C$r8$wrapper$java$util$function$Predicate$VWRP ? ((C$r8$wrapper$java$util$function$Predicate$VWRP) predicate).f1257a : new C3238u0(predicate);
    }

    @Override // java.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        return m166a(this.f1340a.and(C$r8$wrapper$java$util$function$Predicate$VWRP.convert(predicate)));
    }

    @Override // java.util.function.Predicate
    public /* synthetic */ Predicate negate() {
        return m166a(this.f1340a.negate());
    }

    @Override // java.util.function.Predicate
    public /* synthetic */ Predicate or(Predicate predicate) {
        return m166a(this.f1340a.mo53or(C$r8$wrapper$java$util$function$Predicate$VWRP.convert(predicate)));
    }

    @Override // java.util.function.Predicate
    public /* synthetic */ boolean test(Object obj) {
        return this.f1340a.test(obj);
    }
}
