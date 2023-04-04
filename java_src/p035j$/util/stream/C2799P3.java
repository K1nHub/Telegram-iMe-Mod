package p035j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.P3 */
/* loaded from: classes2.dex */
final class C2799P3 extends AbstractC2727D3 {

    /* renamed from: c */
    private int[] f821c;

    /* renamed from: d */
    private int f822d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2799P3(InterfaceC2928m3 interfaceC2928m3) {
        super(interfaceC2928m3);
    }

    @Override // p035j$.util.stream.InterfaceC2916k3, p035j$.util.stream.InterfaceC2928m3
    public void accept(int i) {
        int[] iArr = this.f821c;
        int i2 = this.f822d;
        this.f822d = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p035j$.util.stream.AbstractC2892g3, p035j$.util.stream.InterfaceC2928m3
    /* renamed from: m */
    public void mo330m() {
        int i = 0;
        Arrays.sort(this.f821c, 0, this.f822d);
        this.f959a.mo306n(this.f822d);
        if (this.f720b) {
            while (i < this.f822d && !this.f959a.mo305o()) {
                this.f959a.accept(this.f821c[i]);
                i++;
            }
        } else {
            while (i < this.f822d) {
                this.f959a.accept(this.f821c[i]);
                i++;
            }
        }
        this.f959a.mo330m();
        this.f821c = null;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: n */
    public void mo306n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f821c = new int[(int) j];
    }
}
