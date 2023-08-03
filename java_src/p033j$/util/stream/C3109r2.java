package p033j$.util.stream;

import p033j$.util.InterfaceC2853s;
/* renamed from: j$.util.stream.r2 */
/* loaded from: classes2.dex */
final class C3109r2 extends AbstractC3115s2 {

    /* renamed from: h */
    private final Object[] f1126h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3109r2(InterfaceC2853s interfaceC2853s, AbstractC3151y2 abstractC3151y2, Object[] objArr) {
        super(interfaceC2853s, abstractC3151y2, objArr.length);
        this.f1126h = objArr;
    }

    C3109r2(C3109r2 c3109r2, InterfaceC2853s interfaceC2853s, long j, long j2) {
        super(c3109r2, interfaceC2853s, j, j2, c3109r2.f1126h.length);
        this.f1126h = c3109r2.f1126h;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        int i = this.f1138f;
        if (i >= this.f1139g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1138f));
        }
        Object[] objArr = this.f1126h;
        this.f1138f = i + 1;
        objArr[i] = obj;
    }

    @Override // p033j$.util.stream.AbstractC3115s2
    /* renamed from: b */
    AbstractC3115s2 mo345b(InterfaceC2853s interfaceC2853s, long j, long j2) {
        return new C3109r2(this, interfaceC2853s, j, j2);
    }
}
