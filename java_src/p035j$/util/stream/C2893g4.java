package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.function.C2667e;
import p035j$.util.function.InterfaceC2668f;
/* renamed from: j$.util.stream.g4 */
/* loaded from: classes2.dex */
final class C2893g4 extends AbstractC2911j4 implements InterfaceC2668f {

    /* renamed from: c */
    final double[] f960c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2893g4(int i) {
        this.f960c = new double[i];
    }

    @Override // p035j$.util.function.InterfaceC2668f
    public void accept(double d) {
        double[] dArr = this.f960c;
        int i = this.f977b;
        this.f977b = i + 1;
        dArr[i] = d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p035j$.util.stream.AbstractC2911j4
    /* renamed from: b */
    public void mo394b(Object obj, long j) {
        InterfaceC2668f interfaceC2668f = (InterfaceC2668f) obj;
        for (int i = 0; i < j; i++) {
            interfaceC2668f.accept(this.f960c[i]);
        }
    }

    @Override // p035j$.util.function.InterfaceC2668f
    /* renamed from: j */
    public InterfaceC2668f mo96j(InterfaceC2668f interfaceC2668f) {
        Objects.requireNonNull(interfaceC2668f);
        return new C2667e(this, interfaceC2668f);
    }
}
