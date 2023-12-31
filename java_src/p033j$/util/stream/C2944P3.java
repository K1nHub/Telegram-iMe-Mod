package p033j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.P3 */
/* loaded from: classes2.dex */
final class C2944P3 extends AbstractC2872D3 {

    /* renamed from: c */
    private int[] f954c;

    /* renamed from: d */
    private int f955d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2944P3(InterfaceC3073m3 interfaceC3073m3) {
        super(interfaceC3073m3);
    }

    @Override // p033j$.util.stream.InterfaceC3061k3, p033j$.util.stream.InterfaceC3073m3
    public void accept(int i) {
        int[] iArr = this.f954c;
        int i2 = this.f955d;
        this.f955d = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p033j$.util.stream.AbstractC3037g3, p033j$.util.stream.InterfaceC3073m3
    /* renamed from: l */
    public void mo385l() {
        int i = 0;
        Arrays.sort(this.f954c, 0, this.f955d);
        this.f1092a.mo361m(this.f955d);
        if (this.f853b) {
            while (i < this.f955d && !this.f1092a.mo360o()) {
                this.f1092a.accept(this.f954c[i]);
                i++;
            }
        } else {
            while (i < this.f955d) {
                this.f1092a.accept(this.f954c[i]);
                i++;
            }
        }
        this.f1092a.mo385l();
        this.f954c = null;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: m */
    public void mo361m(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f954c = new int[(int) j];
    }
}
