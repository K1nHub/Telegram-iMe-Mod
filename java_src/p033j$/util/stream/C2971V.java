package p033j$.util.stream;

import p033j$.util.Optional;
import p033j$.util.function.Predicate;
/* renamed from: j$.util.stream.V */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2971V implements Predicate {

    /* renamed from: a */
    public static final /* synthetic */ C2971V f984a = new C2971V();

    private /* synthetic */ C2971V() {
    }

    @Override // p033j$.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        return Predicate.CC.$default$and(this, predicate);
    }

    @Override // p033j$.util.function.Predicate
    public /* synthetic */ Predicate negate() {
        return Predicate.CC.$default$negate(this);
    }

    @Override // p033j$.util.function.Predicate
    /* renamed from: or */
    public /* synthetic */ Predicate mo53or(Predicate predicate) {
        return Predicate.CC.$default$or(this, predicate);
    }

    @Override // p033j$.util.function.Predicate
    public final boolean test(Object obj) {
        return ((Optional) obj).isPresent();
    }
}
