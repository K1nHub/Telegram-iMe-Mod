package p034j$.util.stream;

import p034j$.util.InterfaceC2611s;
/* renamed from: j$.util.stream.r2 */
/* loaded from: classes2.dex */
final class C2867r2 extends AbstractC2873s2 {

    /* renamed from: h */
    private final Object[] f1037h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2867r2(InterfaceC2611s interfaceC2611s, AbstractC2909y2 abstractC2909y2, Object[] objArr) {
        super(interfaceC2611s, abstractC2909y2, objArr.length);
        this.f1037h = objArr;
    }

    C2867r2(C2867r2 c2867r2, InterfaceC2611s interfaceC2611s, long j, long j2) {
        super(c2867r2, interfaceC2611s, j, j2, c2867r2.f1037h.length);
        this.f1037h = c2867r2.f1037h;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        int i = this.f1049f;
        if (i >= this.f1050g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1049f));
        }
        Object[] objArr = this.f1037h;
        this.f1049f = i + 1;
        objArr[i] = obj;
    }

    @Override // p034j$.util.stream.AbstractC2873s2
    /* renamed from: b */
    AbstractC2873s2 mo342b(InterfaceC2611s interfaceC2611s, long j, long j2) {
        return new C2867r2(this, interfaceC2611s, j, j2);
    }
}
