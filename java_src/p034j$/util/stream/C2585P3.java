package p034j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.P3 */
/* loaded from: classes2.dex */
final class C2585P3 extends AbstractC2513D3 {

    /* renamed from: c */
    private int[] f810c;

    /* renamed from: d */
    private int f811d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2585P3(InterfaceC2714m3 interfaceC2714m3) {
        super(interfaceC2714m3);
    }

    @Override // p034j$.util.stream.InterfaceC2702k3, p034j$.util.stream.InterfaceC2714m3
    public void accept(int i) {
        int[] iArr = this.f810c;
        int i2 = this.f811d;
        this.f811d = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p034j$.util.stream.AbstractC2678g3, p034j$.util.stream.InterfaceC2714m3
    /* renamed from: m */
    public void mo336m() {
        int i = 0;
        Arrays.sort(this.f810c, 0, this.f811d);
        this.f948a.mo312n(this.f811d);
        if (this.f709b) {
            while (i < this.f811d && !this.f948a.mo311o()) {
                this.f948a.accept(this.f810c[i]);
                i++;
            }
        } else {
            while (i < this.f811d) {
                this.f948a.accept(this.f810c[i]);
                i++;
            }
        }
        this.f948a.mo336m();
        this.f810c = null;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: n */
    public void mo312n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f810c = new int[(int) j];
    }
}
