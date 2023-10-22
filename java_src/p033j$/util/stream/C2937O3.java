package p033j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.O3 */
/* loaded from: classes2.dex */
final class C2937O3 extends AbstractC2865C3 {

    /* renamed from: c */
    private double[] f949c;

    /* renamed from: d */
    private int f950d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2937O3(InterfaceC3072m3 interfaceC3072m3) {
        super(interfaceC3072m3);
    }

    @Override // p033j$.util.stream.InterfaceC3054j3, p033j$.util.stream.InterfaceC3072m3
    public void accept(double d) {
        double[] dArr = this.f949c;
        int i = this.f950d;
        this.f950d = i + 1;
        dArr[i] = d;
    }

    @Override // p033j$.util.stream.AbstractC3030f3, p033j$.util.stream.InterfaceC3072m3
    /* renamed from: l */
    public void mo384l() {
        int i = 0;
        Arrays.sort(this.f949c, 0, this.f950d);
        this.f1080a.mo360m(this.f950d);
        if (this.f846b) {
            while (i < this.f950d && !this.f1080a.mo359o()) {
                this.f1080a.accept(this.f949c[i]);
                i++;
            }
        } else {
            while (i < this.f950d) {
                this.f1080a.accept(this.f949c[i]);
                i++;
            }
        }
        this.f1080a.mo384l();
        this.f949c = null;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: m */
    public void mo360m(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f949c = new double[(int) j];
    }
}
