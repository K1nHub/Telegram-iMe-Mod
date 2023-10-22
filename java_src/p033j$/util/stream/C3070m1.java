package p033j$.util.stream;

import p033j$.util.Spliterator;
/* renamed from: j$.util.stream.m1 */
/* loaded from: classes2.dex */
final class C3070m1 extends AbstractC3014d {

    /* renamed from: j */
    private final C3064l1 f1131j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3070m1(C3064l1 c3064l1, AbstractC3143y2 abstractC3143y2, Spliterator spliterator) {
        super(abstractC3143y2, spliterator);
        this.f1131j = c3064l1;
    }

    C3070m1(C3070m1 c3070m1, Spliterator spliterator) {
        super(c3070m1, spliterator);
        this.f1131j = c3070m1.f1131j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3026f
    /* renamed from: a */
    public Object mo435a() {
        boolean z;
        AbstractC3143y2 abstractC3143y2 = this.f1072a;
        AbstractC3052j1 abstractC3052j1 = (AbstractC3052j1) this.f1131j.f1125c.get();
        abstractC3143y2.mo351t0(abstractC3052j1, this.f1073b);
        boolean z2 = abstractC3052j1.f1109b;
        z = this.f1131j.f1124b.f1115b;
        if (z2 == z) {
            m491l(Boolean.valueOf(z2));
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3026f
    /* renamed from: f */
    public AbstractC3026f mo434f(Spliterator spliterator) {
        return new C3070m1(this, spliterator);
    }

    @Override // p033j$.util.stream.AbstractC3014d
    /* renamed from: k */
    protected Object mo433k() {
        boolean z;
        z = this.f1131j.f1124b.f1115b;
        return Boolean.valueOf(!z);
    }
}
