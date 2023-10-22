package p033j$.util.stream;

import p033j$.util.C2837i;
import p033j$.util.function.Predicate;
/* renamed from: j$.util.stream.Y */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2985Y implements Predicate {

    /* renamed from: a */
    public static final /* synthetic */ C2985Y f996a = new C2985Y();

    private /* synthetic */ C2985Y() {
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
        return ((C2837i) obj).m606c();
    }
}
