package p033j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.O3 */
/* loaded from: classes2.dex */
final class C2945O3 extends AbstractC2873C3 {

    /* renamed from: c */
    private double[] f896c;

    /* renamed from: d */
    private int f897d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2945O3(InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
    }

    @Override // p033j$.util.stream.InterfaceC3062j3, p033j$.util.stream.InterfaceC3080m3
    public void accept(double d) {
        double[] dArr = this.f896c;
        int i = this.f897d;
        this.f897d = i + 1;
        dArr[i] = d;
    }

    @Override // p033j$.util.stream.AbstractC3038f3, p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public void mo321m() {
        int i = 0;
        Arrays.sort(this.f896c, 0, this.f897d);
        this.f1027a.mo297n(this.f897d);
        if (this.f793b) {
            while (i < this.f897d && !this.f1027a.mo296o()) {
                this.f1027a.accept(this.f896c[i]);
                i++;
            }
        } else {
            while (i < this.f897d) {
                this.f1027a.accept(this.f896c[i]);
                i++;
            }
        }
        this.f1027a.mo321m();
        this.f896c = null;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo297n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f896c = new double[(int) j];
    }
}
