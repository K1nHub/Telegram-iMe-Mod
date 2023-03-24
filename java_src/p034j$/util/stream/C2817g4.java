package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2591e;
import p034j$.util.function.InterfaceC2592f;
/* renamed from: j$.util.stream.g4 */
/* loaded from: classes2.dex */
final class C2817g4 extends AbstractC2835j4 implements InterfaceC2592f {

    /* renamed from: c */
    final double[] f955c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2817g4(int i) {
        this.f955c = new double[i];
    }

    @Override // p034j$.util.function.InterfaceC2592f
    public void accept(double d) {
        double[] dArr = this.f955c;
        int i = this.f972b;
        this.f972b = i + 1;
        dArr[i] = d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2835j4
    /* renamed from: b */
    public void mo399b(Object obj, long j) {
        InterfaceC2592f interfaceC2592f = (InterfaceC2592f) obj;
        for (int i = 0; i < j; i++) {
            interfaceC2592f.accept(this.f955c[i]);
        }
    }

    @Override // p034j$.util.function.InterfaceC2592f
    /* renamed from: j */
    public InterfaceC2592f mo101j(InterfaceC2592f interfaceC2592f) {
        Objects.requireNonNull(interfaceC2592f);
        return new C2591e(this, interfaceC2592f);
    }
}
