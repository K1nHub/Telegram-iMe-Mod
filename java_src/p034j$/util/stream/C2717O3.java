package p034j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.O3 */
/* loaded from: classes2.dex */
final class C2717O3 extends AbstractC2645C3 {

    /* renamed from: c */
    private double[] f811c;

    /* renamed from: d */
    private int f812d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2717O3(InterfaceC2852m3 interfaceC2852m3) {
        super(interfaceC2852m3);
    }

    @Override // p034j$.util.stream.InterfaceC2834j3, p034j$.util.stream.InterfaceC2852m3
    public void accept(double d) {
        double[] dArr = this.f811c;
        int i = this.f812d;
        this.f812d = i + 1;
        dArr[i] = d;
    }

    @Override // p034j$.util.stream.AbstractC2810f3, p034j$.util.stream.InterfaceC2852m3
    /* renamed from: m */
    public void mo335m() {
        int i = 0;
        Arrays.sort(this.f811c, 0, this.f812d);
        this.f942a.mo311n(this.f812d);
        if (this.f708b) {
            while (i < this.f812d && !this.f942a.mo310o()) {
                this.f942a.accept(this.f811c[i]);
                i++;
            }
        } else {
            while (i < this.f812d) {
                this.f942a.accept(this.f811c[i]);
                i++;
            }
        }
        this.f942a.mo335m();
        this.f811c = null;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: n */
    public void mo311n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f811c = new double[(int) j];
    }
}
