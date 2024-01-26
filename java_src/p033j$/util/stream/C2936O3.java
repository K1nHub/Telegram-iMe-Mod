package p033j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.O3 */
/* loaded from: classes2.dex */
final class C2936O3 extends AbstractC2864C3 {

    /* renamed from: c */
    private double[] f949c;

    /* renamed from: d */
    private int f950d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2936O3(InterfaceC3071m3 interfaceC3071m3) {
        super(interfaceC3071m3);
    }

    @Override // p033j$.util.stream.InterfaceC3053j3, p033j$.util.stream.InterfaceC3071m3
    public void accept(double d) {
        double[] dArr = this.f949c;
        int i = this.f950d;
        this.f950d = i + 1;
        dArr[i] = d;
    }

    @Override // p033j$.util.stream.AbstractC3029f3, p033j$.util.stream.InterfaceC3071m3
    /* renamed from: l */
    public void mo388l() {
        int i = 0;
        Arrays.sort(this.f949c, 0, this.f950d);
        this.f1080a.mo364m(this.f950d);
        if (this.f846b) {
            while (i < this.f950d && !this.f1080a.mo363o()) {
                this.f1080a.accept(this.f949c[i]);
                i++;
            }
        } else {
            while (i < this.f950d) {
                this.f1080a.accept(this.f949c[i]);
                i++;
            }
        }
        this.f1080a.mo388l();
        this.f949c = null;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: m */
    public void mo364m(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f949c = new double[(int) j];
    }
}
