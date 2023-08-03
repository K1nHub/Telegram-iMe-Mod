package p033j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.O3 */
/* loaded from: classes2.dex */
final class C2945O3 extends AbstractC2873C3 {

    /* renamed from: c */
    private double[] f899c;

    /* renamed from: d */
    private int f900d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2945O3(InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
    }

    @Override // p033j$.util.stream.InterfaceC3062j3, p033j$.util.stream.InterfaceC3080m3
    public void accept(double d) {
        double[] dArr = this.f899c;
        int i = this.f900d;
        this.f900d = i + 1;
        dArr[i] = d;
    }

    @Override // p033j$.util.stream.AbstractC3038f3, p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public void mo339m() {
        int i = 0;
        Arrays.sort(this.f899c, 0, this.f900d);
        this.f1030a.mo315n(this.f900d);
        if (this.f796b) {
            while (i < this.f900d && !this.f1030a.mo314o()) {
                this.f1030a.accept(this.f899c[i]);
                i++;
            }
        } else {
            while (i < this.f900d) {
                this.f1030a.accept(this.f899c[i]);
                i++;
            }
        }
        this.f1030a.mo339m();
        this.f899c = null;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo315n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f899c = new double[(int) j];
    }
}
