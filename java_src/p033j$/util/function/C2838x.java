package p033j$.util.function;

import p033j$.util.function.Predicate;
/* renamed from: j$.util.function.x */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2838x implements Predicate {

    /* renamed from: a */
    public final /* synthetic */ int f752a;

    /* renamed from: b */
    public final /* synthetic */ Predicate f753b;

    /* renamed from: c */
    public final /* synthetic */ Predicate f754c;

    public /* synthetic */ C2838x(Predicate predicate, Predicate predicate2, int i) {
        this.f752a = i;
        if (i != 1) {
            this.f753b = predicate;
            this.f754c = predicate2;
            return;
        }
        this.f753b = predicate;
        this.f754c = predicate2;
    }

    @Override // p033j$.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        switch (this.f752a) {
            case 0:
                return Predicate.CC.$default$and(this, predicate);
            default:
                return Predicate.CC.$default$and(this, predicate);
        }
    }

    @Override // p033j$.util.function.Predicate
    public /* synthetic */ Predicate negate() {
        switch (this.f752a) {
            case 0:
                return Predicate.CC.$default$negate(this);
            default:
                return Predicate.CC.$default$negate(this);
        }
    }

    @Override // p033j$.util.function.Predicate
    /* renamed from: or */
    public /* synthetic */ Predicate mo25or(Predicate predicate) {
        switch (this.f752a) {
            case 0:
                return Predicate.CC.$default$or(this, predicate);
            default:
                return Predicate.CC.$default$or(this, predicate);
        }
    }

    @Override // p033j$.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f752a) {
            case 0:
                return this.f753b.test(obj) && this.f754c.test(obj);
            default:
                return this.f753b.test(obj) || this.f754c.test(obj);
        }
    }
}
