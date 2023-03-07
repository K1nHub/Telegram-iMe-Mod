package p034j$.util.stream;

import p034j$.util.InterfaceC2487s;
/* renamed from: j$.util.stream.r2 */
/* loaded from: classes2.dex */
final class C2743r2 extends AbstractC2749s2 {

    /* renamed from: h */
    private final Object[] f1032h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2743r2(InterfaceC2487s interfaceC2487s, AbstractC2785y2 abstractC2785y2, Object[] objArr) {
        super(interfaceC2487s, abstractC2785y2, objArr.length);
        this.f1032h = objArr;
    }

    C2743r2(C2743r2 c2743r2, InterfaceC2487s interfaceC2487s, long j, long j2) {
        super(c2743r2, interfaceC2487s, j, j2, c2743r2.f1032h.length);
        this.f1032h = c2743r2.f1032h;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        int i = this.f1044f;
        if (i >= this.f1045g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1044f));
        }
        Object[] objArr = this.f1032h;
        this.f1044f = i + 1;
        objArr[i] = obj;
    }

    @Override // p034j$.util.stream.AbstractC2749s2
    /* renamed from: b */
    AbstractC2749s2 mo342b(InterfaceC2487s interfaceC2487s, long j, long j2) {
        return new C2743r2(this, interfaceC2487s, j, j2);
    }
}
