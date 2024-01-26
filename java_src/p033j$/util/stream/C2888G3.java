package p033j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.G3 */
/* loaded from: classes2.dex */
final class C2888G3 extends AbstractC2864C3 {

    /* renamed from: c */
    private C2968U3 f884c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2888G3(InterfaceC3071m3 interfaceC3071m3) {
        super(interfaceC3071m3);
    }

    @Override // p033j$.util.stream.InterfaceC3053j3, p033j$.util.stream.InterfaceC3071m3
    public void accept(double d) {
        this.f884c.accept(d);
    }

    @Override // p033j$.util.stream.AbstractC3029f3, p033j$.util.stream.InterfaceC3071m3
    /* renamed from: l */
    public void mo388l() {
        double[] dArr = (double[]) this.f884c.mo344e();
        Arrays.sort(dArr);
        this.f1080a.mo364m(dArr.length);
        int i = 0;
        if (this.f846b) {
            int length = dArr.length;
            while (i < length) {
                double d = dArr[i];
                if (this.f1080a.mo363o()) {
                    break;
                }
                this.f1080a.accept(d);
                i++;
            }
        } else {
            int length2 = dArr.length;
            while (i < length2) {
                this.f1080a.accept(dArr[i]);
                i++;
            }
        }
        this.f1080a.mo388l();
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: m */
    public void mo364m(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f884c = j > 0 ? new C2968U3((int) j) : new C2968U3();
    }
}
