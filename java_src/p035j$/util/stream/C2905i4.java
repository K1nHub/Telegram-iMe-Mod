package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.function.C2678p;
import p035j$.util.function.InterfaceC2679q;
/* renamed from: j$.util.stream.i4 */
/* loaded from: classes2.dex */
final class C2905i4 extends AbstractC2911j4 implements InterfaceC2679q {

    /* renamed from: c */
    final long[] f972c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2905i4(int i) {
        this.f972c = new long[i];
    }

    @Override // p035j$.util.function.InterfaceC2679q
    public void accept(long j) {
        long[] jArr = this.f972c;
        int i = this.f977b;
        this.f977b = i + 1;
        jArr[i] = j;
    }

    @Override // p035j$.util.stream.AbstractC2911j4
    /* renamed from: b */
    public void mo394b(Object obj, long j) {
        InterfaceC2679q interfaceC2679q = (InterfaceC2679q) obj;
        for (int i = 0; i < j; i++) {
            interfaceC2679q.accept(this.f972c[i]);
        }
    }

    @Override // p035j$.util.function.InterfaceC2679q
    /* renamed from: f */
    public InterfaceC2679q mo149f(InterfaceC2679q interfaceC2679q) {
        Objects.requireNonNull(interfaceC2679q);
        return new C2678p(this, interfaceC2679q);
    }
}
