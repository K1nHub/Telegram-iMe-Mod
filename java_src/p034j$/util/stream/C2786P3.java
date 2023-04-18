package p034j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.P3 */
/* loaded from: classes2.dex */
final class C2786P3 extends AbstractC2714D3 {

    /* renamed from: c */
    private int[] f816c;

    /* renamed from: d */
    private int f817d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2786P3(InterfaceC2915m3 interfaceC2915m3) {
        super(interfaceC2915m3);
    }

    @Override // p034j$.util.stream.InterfaceC2903k3, p034j$.util.stream.InterfaceC2915m3
    public void accept(int i) {
        int[] iArr = this.f816c;
        int i2 = this.f817d;
        this.f817d = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p034j$.util.stream.AbstractC2879g3, p034j$.util.stream.InterfaceC2915m3
    /* renamed from: m */
    public void mo316m() {
        int i = 0;
        Arrays.sort(this.f816c, 0, this.f817d);
        this.f954a.mo292n(this.f817d);
        if (this.f715b) {
            while (i < this.f817d && !this.f954a.mo291o()) {
                this.f954a.accept(this.f816c[i]);
                i++;
            }
        } else {
            while (i < this.f817d) {
                this.f954a.accept(this.f816c[i]);
                i++;
            }
        }
        this.f954a.mo316m();
        this.f816c = null;
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: n */
    public void mo292n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f816c = new int[(int) j];
    }
}
