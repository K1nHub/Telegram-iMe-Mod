package p034j$.util.stream;

import p034j$.util.InterfaceC2688s;
/* renamed from: j$.util.stream.r2 */
/* loaded from: classes2.dex */
final class C2944r2 extends AbstractC2950s2 {

    /* renamed from: h */
    private final Object[] f1038h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2944r2(InterfaceC2688s interfaceC2688s, AbstractC2986y2 abstractC2986y2, Object[] objArr) {
        super(interfaceC2688s, abstractC2986y2, objArr.length);
        this.f1038h = objArr;
    }

    C2944r2(C2944r2 c2944r2, InterfaceC2688s interfaceC2688s, long j, long j2) {
        super(c2944r2, interfaceC2688s, j, j2, c2944r2.f1038h.length);
        this.f1038h = c2944r2.f1038h;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        int i = this.f1050f;
        if (i >= this.f1051g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1050f));
        }
        Object[] objArr = this.f1038h;
        this.f1050f = i + 1;
        objArr[i] = obj;
    }

    @Override // p034j$.util.stream.AbstractC2950s2
    /* renamed from: b */
    AbstractC2950s2 mo322b(InterfaceC2688s interfaceC2688s, long j, long j2) {
        return new C2944r2(this, interfaceC2688s, j, j2);
    }
}
