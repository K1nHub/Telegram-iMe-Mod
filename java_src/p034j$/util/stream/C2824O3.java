package p034j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.O3 */
/* loaded from: classes2.dex */
final class C2824O3 extends AbstractC2752C3 {

    /* renamed from: c */
    private double[] f814c;

    /* renamed from: d */
    private int f815d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2824O3(InterfaceC2959m3 interfaceC2959m3) {
        super(interfaceC2959m3);
    }

    @Override // p034j$.util.stream.InterfaceC2941j3, p034j$.util.stream.InterfaceC2959m3
    public void accept(double d) {
        double[] dArr = this.f814c;
        int i = this.f815d;
        this.f815d = i + 1;
        dArr[i] = d;
    }

    @Override // p034j$.util.stream.AbstractC2917f3, p034j$.util.stream.InterfaceC2959m3
    /* renamed from: m */
    public void mo321m() {
        int i = 0;
        Arrays.sort(this.f814c, 0, this.f815d);
        this.f945a.mo297n(this.f815d);
        if (this.f711b) {
            while (i < this.f815d && !this.f945a.mo296o()) {
                this.f945a.accept(this.f814c[i]);
                i++;
            }
        } else {
            while (i < this.f815d) {
                this.f945a.accept(this.f814c[i]);
                i++;
            }
        }
        this.f945a.mo321m();
        this.f814c = null;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: n */
    public void mo297n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f814c = new double[(int) j];
    }
}
