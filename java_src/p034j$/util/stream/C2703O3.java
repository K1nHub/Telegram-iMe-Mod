package p034j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.O3 */
/* loaded from: classes2.dex */
final class C2703O3 extends AbstractC2631C3 {

    /* renamed from: c */
    private double[] f810c;

    /* renamed from: d */
    private int f811d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2703O3(InterfaceC2838m3 interfaceC2838m3) {
        super(interfaceC2838m3);
    }

    @Override // p034j$.util.stream.InterfaceC2820j3, p034j$.util.stream.InterfaceC2838m3
    public void accept(double d) {
        double[] dArr = this.f810c;
        int i = this.f811d;
        this.f811d = i + 1;
        dArr[i] = d;
    }

    @Override // p034j$.util.stream.AbstractC2796f3, p034j$.util.stream.InterfaceC2838m3
    /* renamed from: m */
    public void mo336m() {
        int i = 0;
        Arrays.sort(this.f810c, 0, this.f811d);
        this.f941a.mo312n(this.f811d);
        if (this.f707b) {
            while (i < this.f811d && !this.f941a.mo311o()) {
                this.f941a.accept(this.f810c[i]);
                i++;
            }
        } else {
            while (i < this.f811d) {
                this.f941a.accept(this.f810c[i]);
                i++;
            }
        }
        this.f941a.mo336m();
        this.f810c = null;
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: n */
    public void mo312n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f810c = new double[(int) j];
    }
}
