package p034j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.O3 */
/* loaded from: classes2.dex */
final class C2579O3 extends AbstractC2507C3 {

    /* renamed from: c */
    private double[] f805c;

    /* renamed from: d */
    private int f806d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2579O3(InterfaceC2714m3 interfaceC2714m3) {
        super(interfaceC2714m3);
    }

    @Override // p034j$.util.stream.InterfaceC2696j3, p034j$.util.stream.InterfaceC2714m3
    public void accept(double d) {
        double[] dArr = this.f805c;
        int i = this.f806d;
        this.f806d = i + 1;
        dArr[i] = d;
    }

    @Override // p034j$.util.stream.AbstractC2672f3, p034j$.util.stream.InterfaceC2714m3
    /* renamed from: m */
    public void mo336m() {
        int i = 0;
        Arrays.sort(this.f805c, 0, this.f806d);
        this.f936a.mo312n(this.f806d);
        if (this.f702b) {
            while (i < this.f806d && !this.f936a.mo311o()) {
                this.f936a.accept(this.f805c[i]);
                i++;
            }
        } else {
            while (i < this.f806d) {
                this.f936a.accept(this.f805c[i]);
                i++;
            }
        }
        this.f936a.mo336m();
        this.f805c = null;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: n */
    public void mo312n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f805c = new double[(int) j];
    }
}
