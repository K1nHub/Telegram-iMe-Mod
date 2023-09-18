package p033j$.util.function;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.concurrent.C2863a;
import p033j$.util.function.Predicate;
/* renamed from: j$.util.function.a */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2870a implements InterfaceC2871b, Predicate {

    /* renamed from: a */
    public final /* synthetic */ int f739a;

    /* renamed from: b */
    public final /* synthetic */ Object f740b;

    public /* synthetic */ C2870a(Predicate predicate) {
        this.f739a = 2;
        this.f740b = predicate;
    }

    @Override // p033j$.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        return Predicate.CC.$default$and(this, predicate);
    }

    @Override // p033j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        switch (this.f739a) {
            case 0:
                Objects.requireNonNull(function);
                return new C2863a(this, function);
            default:
                Objects.requireNonNull(function);
                return new C2863a(this, function);
        }
    }

    @Override // p033j$.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        switch (this.f739a) {
            case 0:
                return ((Comparator) this.f740b).compare(obj, obj2) >= 0 ? obj : obj2;
            default:
                return ((Comparator) this.f740b).compare(obj, obj2) <= 0 ? obj : obj2;
        }
    }

    @Override // p033j$.util.function.Predicate
    public /* synthetic */ Predicate negate() {
        return Predicate.CC.$default$negate(this);
    }

    @Override // p033j$.util.function.Predicate
    /* renamed from: or */
    public /* synthetic */ Predicate mo25or(Predicate predicate) {
        return Predicate.CC.$default$or(this, predicate);
    }

    @Override // p033j$.util.function.Predicate
    public boolean test(Object obj) {
        return !((Predicate) this.f740b).test(obj);
    }

    public /* synthetic */ C2870a(Comparator comparator, int i) {
        this.f739a = i;
        if (i != 1) {
            this.f740b = comparator;
        } else {
            this.f740b = comparator;
        }
    }
}
