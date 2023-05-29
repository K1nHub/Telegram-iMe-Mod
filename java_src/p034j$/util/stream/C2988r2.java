package p034j$.util.stream;

import p034j$.util.InterfaceC2732s;
/* renamed from: j$.util.stream.r2 */
/* loaded from: classes2.dex */
final class C2988r2 extends AbstractC2994s2 {

    /* renamed from: h */
    private final Object[] f1041h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2988r2(InterfaceC2732s interfaceC2732s, AbstractC3030y2 abstractC3030y2, Object[] objArr) {
        super(interfaceC2732s, abstractC3030y2, objArr.length);
        this.f1041h = objArr;
    }

    C2988r2(C2988r2 c2988r2, InterfaceC2732s interfaceC2732s, long j, long j2) {
        super(c2988r2, interfaceC2732s, j, j2, c2988r2.f1041h.length);
        this.f1041h = c2988r2.f1041h;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        int i = this.f1053f;
        if (i >= this.f1054g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1053f));
        }
        Object[] objArr = this.f1041h;
        this.f1053f = i + 1;
        objArr[i] = obj;
    }

    @Override // p034j$.util.stream.AbstractC2994s2
    /* renamed from: b */
    AbstractC2994s2 mo327b(InterfaceC2732s interfaceC2732s, long j, long j2) {
        return new C2988r2(this, interfaceC2732s, j, j2);
    }
}
