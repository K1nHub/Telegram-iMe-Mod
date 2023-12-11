package p033j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.O3 */
/* loaded from: classes2.dex */
final class C2938O3 extends AbstractC2866C3 {

    /* renamed from: c */
    private double[] f949c;

    /* renamed from: d */
    private int f950d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2938O3(InterfaceC3073m3 interfaceC3073m3) {
        super(interfaceC3073m3);
    }

    @Override // p033j$.util.stream.InterfaceC3055j3, p033j$.util.stream.InterfaceC3073m3
    public void accept(double d) {
        double[] dArr = this.f949c;
        int i = this.f950d;
        this.f950d = i + 1;
        dArr[i] = d;
    }

    @Override // p033j$.util.stream.AbstractC3031f3, p033j$.util.stream.InterfaceC3073m3
    /* renamed from: l */
    public void mo385l() {
        int i = 0;
        Arrays.sort(this.f949c, 0, this.f950d);
        this.f1080a.mo361m(this.f950d);
        if (this.f846b) {
            while (i < this.f950d && !this.f1080a.mo360o()) {
                this.f1080a.accept(this.f949c[i]);
                i++;
            }
        } else {
            while (i < this.f950d) {
                this.f1080a.accept(this.f949c[i]);
                i++;
            }
        }
        this.f1080a.mo385l();
        this.f949c = null;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: m */
    public void mo361m(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f949c = new double[(int) j];
    }
}
