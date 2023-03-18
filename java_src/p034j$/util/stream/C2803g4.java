package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2577e;
import p034j$.util.function.InterfaceC2578f;
/* renamed from: j$.util.stream.g4 */
/* loaded from: classes2.dex */
final class C2803g4 extends AbstractC2821j4 implements InterfaceC2578f {

    /* renamed from: c */
    final double[] f954c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2803g4(int i) {
        this.f954c = new double[i];
    }

    @Override // p034j$.util.function.InterfaceC2578f
    public void accept(double d) {
        double[] dArr = this.f954c;
        int i = this.f971b;
        this.f971b = i + 1;
        dArr[i] = d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2821j4
    /* renamed from: b */
    public void mo400b(Object obj, long j) {
        InterfaceC2578f interfaceC2578f = (InterfaceC2578f) obj;
        for (int i = 0; i < j; i++) {
            interfaceC2578f.accept(this.f954c[i]);
        }
    }

    @Override // p034j$.util.function.InterfaceC2578f
    /* renamed from: j */
    public InterfaceC2578f mo102j(InterfaceC2578f interfaceC2578f) {
        Objects.requireNonNull(interfaceC2578f);
        return new C2577e(this, interfaceC2578f);
    }
}
