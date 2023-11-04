package p033j$.util.stream;

import p033j$.util.Spliterator;
/* renamed from: j$.util.stream.m1 */
/* loaded from: classes2.dex */
final class C3074m1 extends AbstractC3018d {

    /* renamed from: j */
    private final C3068l1 f1131j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3074m1(C3068l1 c3068l1, AbstractC3147y2 abstractC3147y2, Spliterator spliterator) {
        super(abstractC3147y2, spliterator);
        this.f1131j = c3068l1;
    }

    C3074m1(C3074m1 c3074m1, Spliterator spliterator) {
        super(c3074m1, spliterator);
        this.f1131j = c3074m1.f1131j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3030f
    /* renamed from: a */
    public Object mo436a() {
        boolean z;
        AbstractC3147y2 abstractC3147y2 = this.f1072a;
        AbstractC3056j1 abstractC3056j1 = (AbstractC3056j1) this.f1131j.f1125c.get();
        abstractC3147y2.mo352t0(abstractC3056j1, this.f1073b);
        boolean z2 = abstractC3056j1.f1109b;
        z = this.f1131j.f1124b.f1115b;
        if (z2 == z) {
            m492l(Boolean.valueOf(z2));
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3030f
    /* renamed from: f */
    public AbstractC3030f mo435f(Spliterator spliterator) {
        return new C3074m1(this, spliterator);
    }

    @Override // p033j$.util.stream.AbstractC3018d
    /* renamed from: k */
    protected Object mo434k() {
        boolean z;
        z = this.f1131j.f1124b.f1115b;
        return Boolean.valueOf(!z);
    }
}
