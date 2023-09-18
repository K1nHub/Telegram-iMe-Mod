package p033j$.util.function;

import p033j$.util.function.Predicate;
/* renamed from: j$.util.function.x */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2893x implements Predicate {

    /* renamed from: a */
    public final /* synthetic */ int f753a;

    /* renamed from: b */
    public final /* synthetic */ Predicate f754b;

    /* renamed from: c */
    public final /* synthetic */ Predicate f755c;

    public /* synthetic */ C2893x(Predicate predicate, Predicate predicate2, int i) {
        this.f753a = i;
        if (i != 1) {
            this.f754b = predicate;
            this.f755c = predicate2;
            return;
        }
        this.f754b = predicate;
        this.f755c = predicate2;
    }

    @Override // p033j$.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        switch (this.f753a) {
            case 0:
                return Predicate.CC.$default$and(this, predicate);
            default:
                return Predicate.CC.$default$and(this, predicate);
        }
    }

    @Override // p033j$.util.function.Predicate
    public /* synthetic */ Predicate negate() {
        switch (this.f753a) {
            case 0:
                return Predicate.CC.$default$negate(this);
            default:
                return Predicate.CC.$default$negate(this);
        }
    }

    @Override // p033j$.util.function.Predicate
    /* renamed from: or */
    public /* synthetic */ Predicate mo25or(Predicate predicate) {
        switch (this.f753a) {
            case 0:
                return Predicate.CC.$default$or(this, predicate);
            default:
                return Predicate.CC.$default$or(this, predicate);
        }
    }

    @Override // p033j$.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f753a) {
            case 0:
                return this.f754b.test(obj) && this.f755c.test(obj);
            default:
                return this.f754b.test(obj) || this.f755c.test(obj);
        }
    }
}
