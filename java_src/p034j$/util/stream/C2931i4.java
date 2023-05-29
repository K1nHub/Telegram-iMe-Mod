package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2704p;
import p034j$.util.function.InterfaceC2705q;
/* renamed from: j$.util.stream.i4 */
/* loaded from: classes2.dex */
final class C2931i4 extends AbstractC2937j4 implements InterfaceC2705q {

    /* renamed from: c */
    final long[] f970c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2931i4(int i) {
        this.f970c = new long[i];
    }

    @Override // p034j$.util.function.InterfaceC2705q
    public void accept(long j) {
        long[] jArr = this.f970c;
        int i = this.f975b;
        this.f975b = i + 1;
        jArr[i] = j;
    }

    @Override // p034j$.util.stream.AbstractC2937j4
    /* renamed from: b */
    public void mo385b(Object obj, long j) {
        InterfaceC2705q interfaceC2705q = (InterfaceC2705q) obj;
        for (int i = 0; i < j; i++) {
            interfaceC2705q.accept(this.f970c[i]);
        }
    }

    @Override // p034j$.util.function.InterfaceC2705q
    /* renamed from: f */
    public InterfaceC2705q mo140f(InterfaceC2705q interfaceC2705q) {
        Objects.requireNonNull(interfaceC2705q);
        return new C2704p(this, interfaceC2705q);
    }
}
