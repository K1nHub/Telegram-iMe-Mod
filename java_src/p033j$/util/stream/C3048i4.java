package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2824o;
import p033j$.util.function.InterfaceC2825p;
/* renamed from: j$.util.stream.i4 */
/* loaded from: classes2.dex */
final class C3048i4 extends AbstractC3054j4 implements InterfaceC2825p {

    /* renamed from: c */
    final long[] f1105c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3048i4(int i) {
        this.f1105c = new long[i];
    }

    @Override // p033j$.util.function.InterfaceC2825p
    public void accept(long j) {
        long[] jArr = this.f1105c;
        int i = this.f1110b;
        this.f1110b = i + 1;
        jArr[i] = j;
    }

    @Override // p033j$.util.stream.AbstractC3054j4
    /* renamed from: b */
    public void mo452b(Object obj, long j) {
        InterfaceC2825p interfaceC2825p = (InterfaceC2825p) obj;
        for (int i = 0; i < j; i++) {
            interfaceC2825p.accept(this.f1105c[i]);
        }
    }

    @Override // p033j$.util.function.InterfaceC2825p
    /* renamed from: f */
    public InterfaceC2825p mo216f(InterfaceC2825p interfaceC2825p) {
        Objects.requireNonNull(interfaceC2825p);
        return new C2824o(this, interfaceC2825p);
    }
}
