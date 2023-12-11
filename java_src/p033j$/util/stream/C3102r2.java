package p033j$.util.stream;

import p033j$.util.Spliterator;
/* renamed from: j$.util.stream.r2 */
/* loaded from: classes2.dex */
final class C3102r2 extends AbstractC3108s2 {

    /* renamed from: h */
    private final Object[] f1176h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3102r2(Spliterator spliterator, AbstractC3144y2 abstractC3144y2, Object[] objArr) {
        super(spliterator, abstractC3144y2, objArr.length);
        this.f1176h = objArr;
    }

    C3102r2(C3102r2 c3102r2, Spliterator spliterator, long j, long j2) {
        super(c3102r2, spliterator, j, j2, c3102r2.f1176h.length);
        this.f1176h = c3102r2.f1176h;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        int i = this.f1188f;
        if (i >= this.f1189g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1188f));
        }
        Object[] objArr = this.f1176h;
        this.f1188f = i + 1;
        objArr[i] = obj;
    }

    @Override // p033j$.util.stream.AbstractC3108s2
    /* renamed from: b */
    AbstractC3108s2 mo391b(Spliterator spliterator, long j, long j2) {
        return new C3102r2(this, spliterator, j, j2);
    }
}
