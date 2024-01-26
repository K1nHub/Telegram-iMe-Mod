package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2814e;
import p033j$.util.function.InterfaceC2815f;
/* renamed from: j$.util.stream.g4 */
/* loaded from: classes2.dex */
final class C3036g4 extends AbstractC3054j4 implements InterfaceC2815f {

    /* renamed from: c */
    final double[] f1093c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3036g4(int i) {
        this.f1093c = new double[i];
    }

    @Override // p033j$.util.function.InterfaceC2815f
    public void accept(double d) {
        double[] dArr = this.f1093c;
        int i = this.f1110b;
        this.f1110b = i + 1;
        dArr[i] = d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3054j4
    /* renamed from: b */
    public void mo452b(Object obj, long j) {
        InterfaceC2815f interfaceC2815f = (InterfaceC2815f) obj;
        for (int i = 0; i < j; i++) {
            interfaceC2815f.accept(this.f1093c[i]);
        }
    }

    @Override // p033j$.util.function.InterfaceC2815f
    /* renamed from: j */
    public InterfaceC2815f mo161j(InterfaceC2815f interfaceC2815f) {
        Objects.requireNonNull(interfaceC2815f);
        return new C2814e(this, interfaceC2815f);
    }
}
