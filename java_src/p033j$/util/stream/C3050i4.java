package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2826o;
import p033j$.util.function.InterfaceC2827p;
/* renamed from: j$.util.stream.i4 */
/* loaded from: classes2.dex */
final class C3050i4 extends AbstractC3056j4 implements InterfaceC2827p {

    /* renamed from: c */
    final long[] f1105c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3050i4(int i) {
        this.f1105c = new long[i];
    }

    @Override // p033j$.util.function.InterfaceC2827p
    public void accept(long j) {
        long[] jArr = this.f1105c;
        int i = this.f1110b;
        this.f1110b = i + 1;
        jArr[i] = j;
    }

    @Override // p033j$.util.stream.AbstractC3056j4
    /* renamed from: b */
    public void mo449b(Object obj, long j) {
        InterfaceC2827p interfaceC2827p = (InterfaceC2827p) obj;
        for (int i = 0; i < j; i++) {
            interfaceC2827p.accept(this.f1105c[i]);
        }
    }

    @Override // p033j$.util.function.InterfaceC2827p
    /* renamed from: f */
    public InterfaceC2827p mo213f(InterfaceC2827p interfaceC2827p) {
        Objects.requireNonNull(interfaceC2827p);
        return new C2826o(this, interfaceC2827p);
    }
}
