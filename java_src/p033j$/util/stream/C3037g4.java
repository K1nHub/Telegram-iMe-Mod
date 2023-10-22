package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2815e;
import p033j$.util.function.InterfaceC2816f;
/* renamed from: j$.util.stream.g4 */
/* loaded from: classes2.dex */
final class C3037g4 extends AbstractC3055j4 implements InterfaceC2816f {

    /* renamed from: c */
    final double[] f1093c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3037g4(int i) {
        this.f1093c = new double[i];
    }

    @Override // p033j$.util.function.InterfaceC2816f
    public void accept(double d) {
        double[] dArr = this.f1093c;
        int i = this.f1110b;
        this.f1110b = i + 1;
        dArr[i] = d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3055j4
    /* renamed from: b */
    public void mo448b(Object obj, long j) {
        InterfaceC2816f interfaceC2816f = (InterfaceC2816f) obj;
        for (int i = 0; i < j; i++) {
            interfaceC2816f.accept(this.f1093c[i]);
        }
    }

    @Override // p033j$.util.function.InterfaceC2816f
    /* renamed from: j */
    public InterfaceC2816f mo156j(InterfaceC2816f interfaceC2816f) {
        Objects.requireNonNull(interfaceC2816f);
        return new C2815e(this, interfaceC2816f);
    }
}
