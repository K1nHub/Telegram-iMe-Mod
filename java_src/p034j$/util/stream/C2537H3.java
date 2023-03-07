package p034j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.H3 */
/* loaded from: classes2.dex */
final class C2537H3 extends AbstractC2513D3 {

    /* renamed from: c */
    private C2621W3 f747c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2537H3(InterfaceC2714m3 interfaceC2714m3) {
        super(interfaceC2714m3);
    }

    @Override // p034j$.util.stream.InterfaceC2702k3, p034j$.util.stream.InterfaceC2714m3
    public void accept(int i) {
        this.f747c.accept(i);
    }

    @Override // p034j$.util.stream.AbstractC2678g3, p034j$.util.stream.InterfaceC2714m3
    /* renamed from: m */
    public void mo336m() {
        int[] iArr = (int[]) this.f747c.mo292e();
        Arrays.sort(iArr);
        this.f948a.mo312n(iArr.length);
        int i = 0;
        if (this.f709b) {
            int length = iArr.length;
            while (i < length) {
                int i2 = iArr[i];
                if (this.f948a.mo311o()) {
                    break;
                }
                this.f948a.accept(i2);
                i++;
            }
        } else {
            int length2 = iArr.length;
            while (i < length2) {
                this.f948a.accept(iArr[i]);
                i++;
            }
        }
        this.f948a.mo336m();
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: n */
    public void mo312n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f747c = j > 0 ? new C2621W3((int) j) : new C2621W3();
    }
}
