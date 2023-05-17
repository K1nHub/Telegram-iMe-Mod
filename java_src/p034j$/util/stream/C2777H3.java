package p034j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.H3 */
/* loaded from: classes2.dex */
final class C2777H3 extends AbstractC2753D3 {

    /* renamed from: c */
    private C2861W3 f756c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2777H3(InterfaceC2954m3 interfaceC2954m3) {
        super(interfaceC2954m3);
    }

    @Override // p034j$.util.stream.InterfaceC2942k3, p034j$.util.stream.InterfaceC2954m3
    public void accept(int i) {
        this.f756c.accept(i);
    }

    @Override // p034j$.util.stream.AbstractC2918g3, p034j$.util.stream.InterfaceC2954m3
    /* renamed from: m */
    public void mo321m() {
        int[] iArr = (int[]) this.f756c.mo277e();
        Arrays.sort(iArr);
        this.f957a.mo297n(iArr.length);
        int i = 0;
        if (this.f718b) {
            int length = iArr.length;
            while (i < length) {
                int i2 = iArr[i];
                if (this.f957a.mo296o()) {
                    break;
                }
                this.f957a.accept(i2);
                i++;
            }
        } else {
            int length2 = iArr.length;
            while (i < length2) {
                this.f957a.accept(iArr[i]);
                i++;
            }
        }
        this.f957a.mo321m();
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: n */
    public void mo297n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f756c = j > 0 ? new C2861W3((int) j) : new C2861W3();
    }
}
