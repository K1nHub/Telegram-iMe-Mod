package p034j$.util.stream;

import p034j$.util.InterfaceC2727s;
/* renamed from: j$.util.stream.r2 */
/* loaded from: classes2.dex */
final class C2983r2 extends AbstractC2989s2 {

    /* renamed from: h */
    private final Object[] f1041h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2983r2(InterfaceC2727s interfaceC2727s, AbstractC3025y2 abstractC3025y2, Object[] objArr) {
        super(interfaceC2727s, abstractC3025y2, objArr.length);
        this.f1041h = objArr;
    }

    C2983r2(C2983r2 c2983r2, InterfaceC2727s interfaceC2727s, long j, long j2) {
        super(c2983r2, interfaceC2727s, j, j2, c2983r2.f1041h.length);
        this.f1041h = c2983r2.f1041h;
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

    @Override // p034j$.util.stream.AbstractC2989s2
    /* renamed from: b */
    AbstractC2989s2 mo327b(InterfaceC2727s interfaceC2727s, long j, long j2) {
        return new C2983r2(this, interfaceC2727s, j, j2);
    }
}
