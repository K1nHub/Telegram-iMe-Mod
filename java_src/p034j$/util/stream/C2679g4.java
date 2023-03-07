package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2453e;
import p034j$.util.function.InterfaceC2454f;
/* renamed from: j$.util.stream.g4 */
/* loaded from: classes2.dex */
final class C2679g4 extends AbstractC2697j4 implements InterfaceC2454f {

    /* renamed from: c */
    final double[] f949c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2679g4(int i) {
        this.f949c = new double[i];
    }

    @Override // p034j$.util.function.InterfaceC2454f
    public void accept(double d) {
        double[] dArr = this.f949c;
        int i = this.f966b;
        this.f966b = i + 1;
        dArr[i] = d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2697j4
    /* renamed from: b */
    public void mo400b(Object obj, long j) {
        InterfaceC2454f interfaceC2454f = (InterfaceC2454f) obj;
        for (int i = 0; i < j; i++) {
            interfaceC2454f.accept(this.f949c[i]);
        }
    }

    @Override // p034j$.util.function.InterfaceC2454f
    /* renamed from: j */
    public InterfaceC2454f mo102j(InterfaceC2454f interfaceC2454f) {
        Objects.requireNonNull(interfaceC2454f);
        return new C2453e(this, interfaceC2454f);
    }
}
