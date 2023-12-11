package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2816e;
import p033j$.util.function.InterfaceC2817f;
/* renamed from: j$.util.stream.g4 */
/* loaded from: classes2.dex */
final class C3038g4 extends AbstractC3056j4 implements InterfaceC2817f {

    /* renamed from: c */
    final double[] f1093c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3038g4(int i) {
        this.f1093c = new double[i];
    }

    @Override // p033j$.util.function.InterfaceC2817f
    public void accept(double d) {
        double[] dArr = this.f1093c;
        int i = this.f1110b;
        this.f1110b = i + 1;
        dArr[i] = d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3056j4
    /* renamed from: b */
    public void mo449b(Object obj, long j) {
        InterfaceC2817f interfaceC2817f = (InterfaceC2817f) obj;
        for (int i = 0; i < j; i++) {
            interfaceC2817f.accept(this.f1093c[i]);
        }
    }

    @Override // p033j$.util.function.InterfaceC2817f
    /* renamed from: j */
    public InterfaceC2817f mo158j(InterfaceC2817f interfaceC2817f) {
        Objects.requireNonNull(interfaceC2817f);
        return new C2816e(this, interfaceC2817f);
    }
}
