package p033j$.util.function;

import p033j$.util.function.Predicate;
/* renamed from: j$.util.function.x */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2977x implements Predicate {

    /* renamed from: a */
    public final /* synthetic */ int f762a;

    /* renamed from: b */
    public final /* synthetic */ Predicate f763b;

    /* renamed from: c */
    public final /* synthetic */ Predicate f764c;

    public /* synthetic */ C2977x(Predicate predicate, Predicate predicate2, int i) {
        this.f762a = i;
        if (i != 1) {
            this.f763b = predicate;
            this.f764c = predicate2;
            return;
        }
        this.f763b = predicate;
        this.f764c = predicate2;
    }

    @Override // p033j$.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        switch (this.f762a) {
            case 0:
                return Predicate.CC.$default$and(this, predicate);
            default:
                return Predicate.CC.$default$and(this, predicate);
        }
    }

    @Override // p033j$.util.function.Predicate
    public /* synthetic */ Predicate negate() {
        switch (this.f762a) {
            case 0:
                return Predicate.CC.$default$negate(this);
            default:
                return Predicate.CC.$default$negate(this);
        }
    }

    @Override // p033j$.util.function.Predicate
    /* renamed from: or */
    public /* synthetic */ Predicate mo25or(Predicate predicate) {
        switch (this.f762a) {
            case 0:
                return Predicate.CC.$default$or(this, predicate);
            default:
                return Predicate.CC.$default$or(this, predicate);
        }
    }

    @Override // p033j$.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f762a) {
            case 0:
                return this.f763b.test(obj) && this.f764c.test(obj);
            default:
                return this.f763b.test(obj) || this.f764c.test(obj);
        }
    }
}
