package p035j$.util.stream;

import p035j$.util.InterfaceC2701s;
/* renamed from: j$.util.stream.r2 */
/* loaded from: classes2.dex */
final class C2957r2 extends AbstractC2963s2 {

    /* renamed from: h */
    private final Object[] f1043h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2957r2(InterfaceC2701s interfaceC2701s, AbstractC2999y2 abstractC2999y2, Object[] objArr) {
        super(interfaceC2701s, abstractC2999y2, objArr.length);
        this.f1043h = objArr;
    }

    C2957r2(C2957r2 c2957r2, InterfaceC2701s interfaceC2701s, long j, long j2) {
        super(c2957r2, interfaceC2701s, j, j2, c2957r2.f1043h.length);
        this.f1043h = c2957r2.f1043h;
    }

    @Override // p035j$.util.function.Consumer
    public void accept(Object obj) {
        int i = this.f1055f;
        if (i >= this.f1056g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1055f));
        }
        Object[] objArr = this.f1043h;
        this.f1055f = i + 1;
        objArr[i] = obj;
    }

    @Override // p035j$.util.stream.AbstractC2963s2
    /* renamed from: b */
    AbstractC2963s2 mo336b(InterfaceC2701s interfaceC2701s, long j, long j2) {
        return new C2957r2(this, interfaceC2701s, j, j2);
    }
}
