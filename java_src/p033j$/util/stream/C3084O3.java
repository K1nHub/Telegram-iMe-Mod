package p033j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.O3 */
/* loaded from: classes2.dex */
final class C3084O3 extends AbstractC3012C3 {

    /* renamed from: c */
    private double[] f909c;

    /* renamed from: d */
    private int f910d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3084O3(InterfaceC3219m3 interfaceC3219m3) {
        super(interfaceC3219m3);
    }

    @Override // p033j$.util.stream.InterfaceC3201j3, p033j$.util.stream.InterfaceC3219m3
    public void accept(double d) {
        double[] dArr = this.f909c;
        int i = this.f910d;
        this.f910d = i + 1;
        dArr[i] = d;
    }

    @Override // p033j$.util.stream.AbstractC3177f3, p033j$.util.stream.InterfaceC3219m3
    /* renamed from: m */
    public void mo339m() {
        int i = 0;
        Arrays.sort(this.f909c, 0, this.f910d);
        this.f1040a.mo315n(this.f910d);
        if (this.f806b) {
            while (i < this.f910d && !this.f1040a.mo314o()) {
                this.f1040a.accept(this.f909c[i]);
                i++;
            }
        } else {
            while (i < this.f910d) {
                this.f1040a.accept(this.f909c[i]);
                i++;
            }
        }
        this.f1040a.mo339m();
        this.f909c = null;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: n */
    public void mo315n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f909c = new double[(int) j];
    }
}
