package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2709p;
import p034j$.util.function.InterfaceC2710q;
/* renamed from: j$.util.stream.i4 */
/* loaded from: classes2.dex */
final class C2936i4 extends AbstractC2942j4 implements InterfaceC2710q {

    /* renamed from: c */
    final long[] f970c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2936i4(int i) {
        this.f970c = new long[i];
    }

    @Override // p034j$.util.function.InterfaceC2710q
    public void accept(long j) {
        long[] jArr = this.f970c;
        int i = this.f975b;
        this.f975b = i + 1;
        jArr[i] = j;
    }

    @Override // p034j$.util.stream.AbstractC2942j4
    /* renamed from: b */
    public void mo385b(Object obj, long j) {
        InterfaceC2710q interfaceC2710q = (InterfaceC2710q) obj;
        for (int i = 0; i < j; i++) {
            interfaceC2710q.accept(this.f970c[i]);
        }
    }

    @Override // p034j$.util.function.InterfaceC2710q
    /* renamed from: f */
    public InterfaceC2710q mo140f(InterfaceC2710q interfaceC2710q) {
        Objects.requireNonNull(interfaceC2710q);
        return new C2709p(this, interfaceC2710q);
    }
}
