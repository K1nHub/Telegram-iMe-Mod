package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2654e;
import p034j$.util.function.InterfaceC2655f;
/* renamed from: j$.util.stream.g4 */
/* loaded from: classes2.dex */
final class C2880g4 extends AbstractC2898j4 implements InterfaceC2655f {

    /* renamed from: c */
    final double[] f955c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2880g4(int i) {
        this.f955c = new double[i];
    }

    @Override // p034j$.util.function.InterfaceC2655f
    public void accept(double d) {
        double[] dArr = this.f955c;
        int i = this.f972b;
        this.f972b = i + 1;
        dArr[i] = d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2898j4
    /* renamed from: b */
    public void mo380b(Object obj, long j) {
        InterfaceC2655f interfaceC2655f = (InterfaceC2655f) obj;
        for (int i = 0; i < j; i++) {
            interfaceC2655f.accept(this.f955c[i]);
        }
    }

    @Override // p034j$.util.function.InterfaceC2655f
    /* renamed from: j */
    public InterfaceC2655f mo82j(InterfaceC2655f interfaceC2655f) {
        Objects.requireNonNull(interfaceC2655f);
        return new C2654e(this, interfaceC2655f);
    }
}
