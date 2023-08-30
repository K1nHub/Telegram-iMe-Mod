package p033j$.util.function;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.concurrent.C2947a;
import p033j$.util.function.Predicate;
/* renamed from: j$.util.function.a */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2954a implements InterfaceC2955b, Predicate {

    /* renamed from: a */
    public final /* synthetic */ int f748a;

    /* renamed from: b */
    public final /* synthetic */ Object f749b;

    public /* synthetic */ C2954a(Predicate predicate) {
        this.f748a = 2;
        this.f749b = predicate;
    }

    @Override // p033j$.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        return Predicate.CC.$default$and(this, predicate);
    }

    @Override // p033j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        switch (this.f748a) {
            case 0:
                Objects.requireNonNull(function);
                return new C2947a(this, function);
            default:
                Objects.requireNonNull(function);
                return new C2947a(this, function);
        }
    }

    @Override // p033j$.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        switch (this.f748a) {
            case 0:
                return ((Comparator) this.f749b).compare(obj, obj2) >= 0 ? obj : obj2;
            default:
                return ((Comparator) this.f749b).compare(obj, obj2) <= 0 ? obj : obj2;
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
        return !((Predicate) this.f749b).test(obj);
    }

    public /* synthetic */ C2954a(Comparator comparator, int i) {
        this.f748a = i;
        if (i != 1) {
            this.f749b = comparator;
        } else {
            this.f749b = comparator;
        }
    }
}
