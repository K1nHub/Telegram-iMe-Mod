package p035j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.O3 */
/* loaded from: classes2.dex */
final class C2793O3 extends AbstractC2721C3 {

    /* renamed from: c */
    private double[] f816c;

    /* renamed from: d */
    private int f817d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2793O3(InterfaceC2928m3 interfaceC2928m3) {
        super(interfaceC2928m3);
    }

    @Override // p035j$.util.stream.InterfaceC2910j3, p035j$.util.stream.InterfaceC2928m3
    public void accept(double d) {
        double[] dArr = this.f816c;
        int i = this.f817d;
        this.f817d = i + 1;
        dArr[i] = d;
    }

    @Override // p035j$.util.stream.AbstractC2886f3, p035j$.util.stream.InterfaceC2928m3
    /* renamed from: m */
    public void mo330m() {
        int i = 0;
        Arrays.sort(this.f816c, 0, this.f817d);
        this.f947a.mo306n(this.f817d);
        if (this.f713b) {
            while (i < this.f817d && !this.f947a.mo305o()) {
                this.f947a.accept(this.f816c[i]);
                i++;
            }
        } else {
            while (i < this.f817d) {
                this.f947a.accept(this.f816c[i]);
                i++;
            }
        }
        this.f947a.mo330m();
        this.f816c = null;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: n */
    public void mo306n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f816c = new double[(int) j];
    }
}
