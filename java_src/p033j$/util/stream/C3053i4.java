package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2829o;
import p033j$.util.function.InterfaceC2830p;
/* renamed from: j$.util.stream.i4 */
/* loaded from: classes2.dex */
final class C3053i4 extends AbstractC3059j4 implements InterfaceC2830p {

    /* renamed from: c */
    final long[] f1105c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3053i4(int i) {
        this.f1105c = new long[i];
    }

    @Override // p033j$.util.function.InterfaceC2830p
    public void accept(long j) {
        long[] jArr = this.f1105c;
        int i = this.f1110b;
        this.f1110b = i + 1;
        jArr[i] = j;
    }

    @Override // p033j$.util.stream.AbstractC3059j4
    /* renamed from: b */
    public void mo449b(Object obj, long j) {
        InterfaceC2830p interfaceC2830p = (InterfaceC2830p) obj;
        for (int i = 0; i < j; i++) {
            interfaceC2830p.accept(this.f1105c[i]);
        }
    }

    @Override // p033j$.util.function.InterfaceC2830p
    /* renamed from: f */
    public InterfaceC2830p mo213f(InterfaceC2830p interfaceC2830p) {
        Objects.requireNonNull(interfaceC2830p);
        return new C2829o(this, interfaceC2830p);
    }
}
