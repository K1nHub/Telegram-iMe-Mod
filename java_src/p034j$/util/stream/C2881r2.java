package p034j$.util.stream;

import p034j$.util.InterfaceC2625s;
/* renamed from: j$.util.stream.r2 */
/* loaded from: classes2.dex */
final class C2881r2 extends AbstractC2887s2 {

    /* renamed from: h */
    private final Object[] f1038h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2881r2(InterfaceC2625s interfaceC2625s, AbstractC2923y2 abstractC2923y2, Object[] objArr) {
        super(interfaceC2625s, abstractC2923y2, objArr.length);
        this.f1038h = objArr;
    }

    C2881r2(C2881r2 c2881r2, InterfaceC2625s interfaceC2625s, long j, long j2) {
        super(c2881r2, interfaceC2625s, j, j2, c2881r2.f1038h.length);
        this.f1038h = c2881r2.f1038h;
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

    @Override // p034j$.util.stream.AbstractC2887s2
    /* renamed from: b */
    AbstractC2887s2 mo341b(InterfaceC2625s interfaceC2625s, long j, long j2) {
        return new C2881r2(this, interfaceC2625s, j, j2);
    }
}
