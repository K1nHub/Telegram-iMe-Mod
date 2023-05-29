package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2693e;
import p034j$.util.function.InterfaceC2694f;
/* renamed from: j$.util.stream.g4 */
/* loaded from: classes2.dex */
final class C2919g4 extends AbstractC2937j4 implements InterfaceC2694f {

    /* renamed from: c */
    final double[] f958c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2919g4(int i) {
        this.f958c = new double[i];
    }

    @Override // p034j$.util.function.InterfaceC2694f
    public void accept(double d) {
        double[] dArr = this.f958c;
        int i = this.f975b;
        this.f975b = i + 1;
        dArr[i] = d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2937j4
    /* renamed from: b */
    public void mo385b(Object obj, long j) {
        InterfaceC2694f interfaceC2694f = (InterfaceC2694f) obj;
        for (int i = 0; i < j; i++) {
            interfaceC2694f.accept(this.f958c[i]);
        }
    }

    @Override // p034j$.util.function.InterfaceC2694f
    /* renamed from: j */
    public InterfaceC2694f mo87j(InterfaceC2694f interfaceC2694f) {
        Objects.requireNonNull(interfaceC2694f);
        return new C2693e(this, interfaceC2694f);
    }
}
