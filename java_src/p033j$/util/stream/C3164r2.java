package p033j$.util.stream;

import p033j$.util.InterfaceC2908s;
/* renamed from: j$.util.stream.r2 */
/* loaded from: classes2.dex */
final class C3164r2 extends AbstractC3170s2 {

    /* renamed from: h */
    private final Object[] f1127h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3164r2(InterfaceC2908s interfaceC2908s, AbstractC3206y2 abstractC3206y2, Object[] objArr) {
        super(interfaceC2908s, abstractC3206y2, objArr.length);
        this.f1127h = objArr;
    }

    C3164r2(C3164r2 c3164r2, InterfaceC2908s interfaceC2908s, long j, long j2) {
        super(c3164r2, interfaceC2908s, j, j2, c3164r2.f1127h.length);
        this.f1127h = c3164r2.f1127h;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        int i = this.f1139f;
        if (i >= this.f1140g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1139f));
        }
        Object[] objArr = this.f1127h;
        this.f1139f = i + 1;
        objArr[i] = obj;
    }

    @Override // p033j$.util.stream.AbstractC3170s2
    /* renamed from: b */
    AbstractC3170s2 mo345b(InterfaceC2908s interfaceC2908s, long j, long j2) {
        return new C3164r2(this, interfaceC2908s, j, j2);
    }
}
