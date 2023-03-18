package p034j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.H3 */
/* loaded from: classes2.dex */
final class C2661H3 extends AbstractC2637D3 {

    /* renamed from: c */
    private C2745W3 f752c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2661H3(InterfaceC2838m3 interfaceC2838m3) {
        super(interfaceC2838m3);
    }

    @Override // p034j$.util.stream.InterfaceC2826k3, p034j$.util.stream.InterfaceC2838m3
    public void accept(int i) {
        this.f752c.accept(i);
    }

    @Override // p034j$.util.stream.AbstractC2802g3, p034j$.util.stream.InterfaceC2838m3
    /* renamed from: m */
    public void mo336m() {
        int[] iArr = (int[]) this.f752c.mo292e();
        Arrays.sort(iArr);
        this.f953a.mo312n(iArr.length);
        int i = 0;
        if (this.f714b) {
            int length = iArr.length;
            while (i < length) {
                int i2 = iArr[i];
                if (this.f953a.mo311o()) {
                    break;
                }
                this.f953a.accept(i2);
                i++;
            }
        } else {
            int length2 = iArr.length;
            while (i < length2) {
                this.f953a.accept(iArr[i]);
                i++;
            }
        }
        this.f953a.mo336m();
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: n */
    public void mo312n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f752c = j > 0 ? new C2745W3((int) j) : new C2745W3();
    }
}
