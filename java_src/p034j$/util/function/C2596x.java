package p034j$.util.function;

import p034j$.util.function.Predicate;
/* renamed from: j$.util.function.x */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2596x implements Predicate {

    /* renamed from: a */
    public final /* synthetic */ int f663a;

    /* renamed from: b */
    public final /* synthetic */ Predicate f664b;

    /* renamed from: c */
    public final /* synthetic */ Predicate f665c;

    public /* synthetic */ C2596x(Predicate predicate, Predicate predicate2, int i) {
        this.f663a = i;
        if (i != 1) {
            this.f664b = predicate;
            this.f665c = predicate2;
            return;
        }
        this.f664b = predicate;
        this.f665c = predicate2;
    }

    @Override // p034j$.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        switch (this.f663a) {
            case 0:
                return Predicate.CC.$default$and(this, predicate);
            default:
                return Predicate.CC.$default$and(this, predicate);
        }
    }

    @Override // p034j$.util.function.Predicate
    public /* synthetic */ Predicate negate() {
        switch (this.f663a) {
            case 0:
                return Predicate.CC.$default$negate(this);
            default:
                return Predicate.CC.$default$negate(this);
        }
    }

    @Override // p034j$.util.function.Predicate
    /* renamed from: or */
    public /* synthetic */ Predicate mo21or(Predicate predicate) {
        switch (this.f663a) {
            case 0:
                return Predicate.CC.$default$or(this, predicate);
            default:
                return Predicate.CC.$default$or(this, predicate);
        }
    }

    @Override // p034j$.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f663a) {
            case 0:
                return this.f664b.test(obj) && this.f665c.test(obj);
            default:
                return this.f664b.test(obj) || this.f665c.test(obj);
        }
    }
}
