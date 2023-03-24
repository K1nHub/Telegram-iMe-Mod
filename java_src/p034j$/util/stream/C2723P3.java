package p034j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.P3 */
/* loaded from: classes2.dex */
final class C2723P3 extends AbstractC2651D3 {

    /* renamed from: c */
    private int[] f816c;

    /* renamed from: d */
    private int f817d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2723P3(InterfaceC2852m3 interfaceC2852m3) {
        super(interfaceC2852m3);
    }

    @Override // p034j$.util.stream.InterfaceC2840k3, p034j$.util.stream.InterfaceC2852m3
    public void accept(int i) {
        int[] iArr = this.f816c;
        int i2 = this.f817d;
        this.f817d = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p034j$.util.stream.AbstractC2816g3, p034j$.util.stream.InterfaceC2852m3
    /* renamed from: m */
    public void mo335m() {
        int i = 0;
        Arrays.sort(this.f816c, 0, this.f817d);
        this.f954a.mo311n(this.f817d);
        if (this.f715b) {
            while (i < this.f817d && !this.f954a.mo310o()) {
                this.f954a.accept(this.f816c[i]);
                i++;
            }
        } else {
            while (i < this.f817d) {
                this.f954a.accept(this.f816c[i]);
                i++;
            }
        }
        this.f954a.mo335m();
        this.f816c = null;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: n */
    public void mo311n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f816c = new int[(int) j];
    }
}
