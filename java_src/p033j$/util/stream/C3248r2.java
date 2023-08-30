package p033j$.util.stream;

import p033j$.util.InterfaceC2992s;
/* renamed from: j$.util.stream.r2 */
/* loaded from: classes2.dex */
final class C3248r2 extends AbstractC3254s2 {

    /* renamed from: h */
    private final Object[] f1136h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3248r2(InterfaceC2992s interfaceC2992s, AbstractC3290y2 abstractC3290y2, Object[] objArr) {
        super(interfaceC2992s, abstractC3290y2, objArr.length);
        this.f1136h = objArr;
    }

    C3248r2(C3248r2 c3248r2, InterfaceC2992s interfaceC2992s, long j, long j2) {
        super(c3248r2, interfaceC2992s, j, j2, c3248r2.f1136h.length);
        this.f1136h = c3248r2.f1136h;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        int i = this.f1148f;
        if (i >= this.f1149g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1148f));
        }
        Object[] objArr = this.f1136h;
        this.f1148f = i + 1;
        objArr[i] = obj;
    }

    @Override // p033j$.util.stream.AbstractC3254s2
    /* renamed from: b */
    AbstractC3254s2 mo345b(InterfaceC2992s interfaceC2992s, long j, long j2) {
        return new C3248r2(this, interfaceC2992s, j, j2);
    }
}
