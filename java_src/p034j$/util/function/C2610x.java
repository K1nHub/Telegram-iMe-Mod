package p034j$.util.function;

import p034j$.util.function.Predicate;
/* renamed from: j$.util.function.x */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2610x implements Predicate {

    /* renamed from: a */
    public final /* synthetic */ int f664a;

    /* renamed from: b */
    public final /* synthetic */ Predicate f665b;

    /* renamed from: c */
    public final /* synthetic */ Predicate f666c;

    public /* synthetic */ C2610x(Predicate predicate, Predicate predicate2, int i) {
        this.f664a = i;
        if (i != 1) {
            this.f665b = predicate;
            this.f666c = predicate2;
            return;
        }
        this.f665b = predicate;
        this.f666c = predicate2;
    }

    @Override // p034j$.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        switch (this.f664a) {
            case 0:
                return Predicate.CC.$default$and(this, predicate);
            default:
                return Predicate.CC.$default$and(this, predicate);
        }
    }

    @Override // p034j$.util.function.Predicate
    public /* synthetic */ Predicate negate() {
        switch (this.f664a) {
            case 0:
                return Predicate.CC.$default$negate(this);
            default:
                return Predicate.CC.$default$negate(this);
        }
    }

    @Override // p034j$.util.function.Predicate
    /* renamed from: or */
    public /* synthetic */ Predicate mo21or(Predicate predicate) {
        switch (this.f664a) {
            case 0:
                return Predicate.CC.$default$or(this, predicate);
            default:
                return Predicate.CC.$default$or(this, predicate);
        }
    }

    @Override // p034j$.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f664a) {
            case 0:
                return this.f665b.test(obj) && this.f666c.test(obj);
            default:
                return this.f665b.test(obj) || this.f666c.test(obj);
        }
    }
}
