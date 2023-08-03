package p033j$.util.function;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.concurrent.C2808a;
import p033j$.util.function.Predicate;
/* renamed from: j$.util.function.a */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2815a implements InterfaceC2816b, Predicate {

    /* renamed from: a */
    public final /* synthetic */ int f738a;

    /* renamed from: b */
    public final /* synthetic */ Object f739b;

    public /* synthetic */ C2815a(Predicate predicate) {
        this.f738a = 2;
        this.f739b = predicate;
    }

    @Override // p033j$.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        return Predicate.CC.$default$and(this, predicate);
    }

    @Override // p033j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        switch (this.f738a) {
            case 0:
                Objects.requireNonNull(function);
                return new C2808a(this, function);
            default:
                Objects.requireNonNull(function);
                return new C2808a(this, function);
        }
    }

    @Override // p033j$.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        switch (this.f738a) {
            case 0:
                return ((Comparator) this.f739b).compare(obj, obj2) >= 0 ? obj : obj2;
            default:
                return ((Comparator) this.f739b).compare(obj, obj2) <= 0 ? obj : obj2;
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
        return !((Predicate) this.f739b).test(obj);
    }

    public /* synthetic */ C2815a(Comparator comparator, int i) {
        this.f738a = i;
        if (i != 1) {
            this.f739b = comparator;
        } else {
            this.f739b = comparator;
        }
    }
}
