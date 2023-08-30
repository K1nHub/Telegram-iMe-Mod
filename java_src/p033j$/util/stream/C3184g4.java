package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2958e;
import p033j$.util.function.InterfaceC2959f;
/* renamed from: j$.util.stream.g4 */
/* loaded from: classes2.dex */
final class C3184g4 extends AbstractC3202j4 implements InterfaceC2959f {

    /* renamed from: c */
    final double[] f1053c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3184g4(int i) {
        this.f1053c = new double[i];
    }

    @Override // p033j$.util.function.InterfaceC2959f
    public void accept(double d) {
        double[] dArr = this.f1053c;
        int i = this.f1070b;
        this.f1070b = i + 1;
        dArr[i] = d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3202j4
    /* renamed from: b */
    public void mo403b(Object obj, long j) {
        InterfaceC2959f interfaceC2959f = (InterfaceC2959f) obj;
        for (int i = 0; i < j; i++) {
            interfaceC2959f.accept(this.f1053c[i]);
        }
    }

    @Override // p033j$.util.function.InterfaceC2959f
    /* renamed from: j */
    public InterfaceC2959f mo105j(InterfaceC2959f interfaceC2959f) {
        Objects.requireNonNull(interfaceC2959f);
        return new C2958e(this, interfaceC2959f);
    }
}
