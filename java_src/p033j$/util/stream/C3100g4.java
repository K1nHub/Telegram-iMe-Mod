package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2874e;
import p033j$.util.function.InterfaceC2875f;
/* renamed from: j$.util.stream.g4 */
/* loaded from: classes2.dex */
final class C3100g4 extends AbstractC3118j4 implements InterfaceC2875f {

    /* renamed from: c */
    final double[] f1044c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3100g4(int i) {
        this.f1044c = new double[i];
    }

    @Override // p033j$.util.function.InterfaceC2875f
    public void accept(double d) {
        double[] dArr = this.f1044c;
        int i = this.f1061b;
        this.f1061b = i + 1;
        dArr[i] = d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3118j4
    /* renamed from: b */
    public void mo403b(Object obj, long j) {
        InterfaceC2875f interfaceC2875f = (InterfaceC2875f) obj;
        for (int i = 0; i < j; i++) {
            interfaceC2875f.accept(this.f1044c[i]);
        }
    }

    @Override // p033j$.util.function.InterfaceC2875f
    /* renamed from: j */
    public InterfaceC2875f mo105j(InterfaceC2875f interfaceC2875f) {
        Objects.requireNonNull(interfaceC2875f);
        return new C2874e(this, interfaceC2875f);
    }
}
