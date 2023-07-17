package p033j$.util.function;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.concurrent.C2808a;
import p033j$.util.function.Predicate;
/* renamed from: j$.util.function.a */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2815a implements InterfaceC2816b, Predicate {

    /* renamed from: a */
    public final /* synthetic */ int f735a;

    /* renamed from: b */
    public final /* synthetic */ Object f736b;

    public /* synthetic */ C2815a(Predicate predicate) {
        this.f735a = 2;
        this.f736b = predicate;
    }

    @Override // p033j$.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        return Objects.requireNonNull(predicate);
    }

    @Override // p033j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        switch (this.f735a) {
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
        switch (this.f735a) {
            case 0:
                return ((Comparator) this.f736b).compare(obj, obj2) >= 0 ? obj : obj2;
            default:
                return ((Comparator) this.f736b).compare(obj, obj2) <= 0 ? obj : obj2;
        }
    }

    @Override // p033j$.util.function.Predicate
    public /* synthetic */ Predicate negate() {
        return Predicate.CC.$default$negate(this);
    }

    @Override // p033j$.util.function.Predicate
    /* renamed from: or */
    public /* synthetic */ Predicate mo23or(Predicate predicate) {
        return Objects.requireNonNull(predicate);
    }

    @Override // p033j$.util.function.Predicate
    public boolean test(Object obj) {
        return !((Predicate) this.f736b).test(obj);
    }

    public /* synthetic */ C2815a(Comparator comparator, int i) {
        this.f735a = i;
        if (i != 1) {
            this.f736b = comparator;
        } else {
            this.f736b = comparator;
        }
    }
}
