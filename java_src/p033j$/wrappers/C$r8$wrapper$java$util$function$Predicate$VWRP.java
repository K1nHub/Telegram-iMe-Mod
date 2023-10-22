package p033j$.wrappers;

import p033j$.util.function.Predicate;
/* renamed from: j$.wrappers.$r8$wrapper$java$util$function$Predicate$-V-WRP  reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class C$r8$wrapper$java$util$function$Predicate$VWRP implements Predicate {

    /* renamed from: a */
    final /* synthetic */ java.util.function.Predicate f1257a;

    private /* synthetic */ C$r8$wrapper$java$util$function$Predicate$VWRP(java.util.function.Predicate predicate) {
        this.f1257a = predicate;
    }

    public static /* synthetic */ Predicate convert(java.util.function.Predicate predicate) {
        if (predicate == null) {
            return null;
        }
        return predicate instanceof C3237u0 ? ((C3237u0) predicate).f1340a : new C$r8$wrapper$java$util$function$Predicate$VWRP(predicate);
    }

    @Override // p033j$.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        return convert(this.f1257a.and(C3237u0.m164a(predicate)));
    }

    @Override // p033j$.util.function.Predicate
    public /* synthetic */ Predicate negate() {
        return convert(this.f1257a.negate());
    }

    @Override // p033j$.util.function.Predicate
    /* renamed from: or */
    public /* synthetic */ Predicate mo53or(Predicate predicate) {
        return convert(this.f1257a.or(C3237u0.m164a(predicate)));
    }

    @Override // p033j$.util.function.Predicate
    public /* synthetic */ boolean test(Object obj) {
        return this.f1257a.test(obj);
    }
}
