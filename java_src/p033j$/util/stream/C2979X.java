package p033j$.util.stream;

import p033j$.util.C2835h;
import p033j$.util.function.Predicate;
/* renamed from: j$.util.stream.X */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2979X implements Predicate {

    /* renamed from: a */
    public static final /* synthetic */ C2979X f992a = new C2979X();

    private /* synthetic */ C2979X() {
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
        return ((C2835h) obj).m614c();
    }
}
