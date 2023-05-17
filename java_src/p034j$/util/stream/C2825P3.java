package p034j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.P3 */
/* loaded from: classes2.dex */
final class C2825P3 extends AbstractC2753D3 {

    /* renamed from: c */
    private int[] f819c;

    /* renamed from: d */
    private int f820d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2825P3(InterfaceC2954m3 interfaceC2954m3) {
        super(interfaceC2954m3);
    }

    @Override // p034j$.util.stream.InterfaceC2942k3, p034j$.util.stream.InterfaceC2954m3
    public void accept(int i) {
        int[] iArr = this.f819c;
        int i2 = this.f820d;
        this.f820d = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p034j$.util.stream.AbstractC2918g3, p034j$.util.stream.InterfaceC2954m3
    /* renamed from: m */
    public void mo321m() {
        int i = 0;
        Arrays.sort(this.f819c, 0, this.f820d);
        this.f957a.mo297n(this.f820d);
        if (this.f718b) {
            while (i < this.f820d && !this.f957a.mo296o()) {
                this.f957a.accept(this.f819c[i]);
                i++;
            }
        } else {
            while (i < this.f820d) {
                this.f957a.accept(this.f819c[i]);
                i++;
            }
        }
        this.f957a.mo321m();
        this.f819c = null;
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: n */
    public void mo297n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f819c = new int[(int) j];
    }
}
