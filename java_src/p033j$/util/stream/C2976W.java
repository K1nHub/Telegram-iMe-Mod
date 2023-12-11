package p033j$.util.stream;

import p033j$.util.C2836g;
import p033j$.util.function.Predicate;
/* renamed from: j$.util.stream.W */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2976W implements Predicate {

    /* renamed from: a */
    public static final /* synthetic */ C2976W f988a = new C2976W();

    private /* synthetic */ C2976W() {
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
        return ((C2836g) obj).m615c();
    }
}
