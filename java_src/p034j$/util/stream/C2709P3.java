package p034j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.P3 */
/* loaded from: classes2.dex */
final class C2709P3 extends AbstractC2637D3 {

    /* renamed from: c */
    private int[] f815c;

    /* renamed from: d */
    private int f816d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2709P3(InterfaceC2838m3 interfaceC2838m3) {
        super(interfaceC2838m3);
    }

    @Override // p034j$.util.stream.InterfaceC2826k3, p034j$.util.stream.InterfaceC2838m3
    public void accept(int i) {
        int[] iArr = this.f815c;
        int i2 = this.f816d;
        this.f816d = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p034j$.util.stream.AbstractC2802g3, p034j$.util.stream.InterfaceC2838m3
    /* renamed from: m */
    public void mo336m() {
        int i = 0;
        Arrays.sort(this.f815c, 0, this.f816d);
        this.f953a.mo312n(this.f816d);
        if (this.f714b) {
            while (i < this.f816d && !this.f953a.mo311o()) {
                this.f953a.accept(this.f815c[i]);
                i++;
            }
        } else {
            while (i < this.f816d) {
                this.f953a.accept(this.f815c[i]);
                i++;
            }
        }
        this.f953a.mo336m();
        this.f815c = null;
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: n */
    public void mo312n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f815c = new int[(int) j];
    }
}
