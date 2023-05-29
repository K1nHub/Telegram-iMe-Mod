package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2698e;
import p034j$.util.function.InterfaceC2699f;
/* renamed from: j$.util.stream.g4 */
/* loaded from: classes2.dex */
final class C2924g4 extends AbstractC2942j4 implements InterfaceC2699f {

    /* renamed from: c */
    final double[] f958c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2924g4(int i) {
        this.f958c = new double[i];
    }

    @Override // p034j$.util.function.InterfaceC2699f
    public void accept(double d) {
        double[] dArr = this.f958c;
        int i = this.f975b;
        this.f975b = i + 1;
        dArr[i] = d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2942j4
    /* renamed from: b */
    public void mo385b(Object obj, long j) {
        InterfaceC2699f interfaceC2699f = (InterfaceC2699f) obj;
        for (int i = 0; i < j; i++) {
            interfaceC2699f.accept(this.f958c[i]);
        }
    }

    @Override // p034j$.util.function.InterfaceC2699f
    /* renamed from: j */
    public InterfaceC2699f mo87j(InterfaceC2699f interfaceC2699f) {
        Objects.requireNonNull(interfaceC2699f);
        return new C2698e(this, interfaceC2699f);
    }
}
