package p034j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.G3 */
/* loaded from: classes2.dex */
final class C2669G3 extends AbstractC2645C3 {

    /* renamed from: c */
    private C2749U3 f746c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2669G3(InterfaceC2852m3 interfaceC2852m3) {
        super(interfaceC2852m3);
    }

    @Override // p034j$.util.stream.InterfaceC2834j3, p034j$.util.stream.InterfaceC2852m3
    public void accept(double d) {
        this.f746c.accept(d);
    }

    @Override // p034j$.util.stream.AbstractC2810f3, p034j$.util.stream.InterfaceC2852m3
    /* renamed from: m */
    public void mo335m() {
        double[] dArr = (double[]) this.f746c.mo291e();
        Arrays.sort(dArr);
        this.f942a.mo311n(dArr.length);
        int i = 0;
        if (this.f708b) {
            int length = dArr.length;
            while (i < length) {
                double d = dArr[i];
                if (this.f942a.mo310o()) {
                    break;
                }
                this.f942a.accept(d);
                i++;
            }
        } else {
            int length2 = dArr.length;
            while (i < length2) {
                this.f942a.accept(dArr[i]);
                i++;
            }
        }
        this.f942a.mo335m();
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: n */
    public void mo311n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f746c = j > 0 ? new C2749U3((int) j) : new C2749U3();
    }
}
