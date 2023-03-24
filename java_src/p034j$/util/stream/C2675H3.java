package p034j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.H3 */
/* loaded from: classes2.dex */
final class C2675H3 extends AbstractC2651D3 {

    /* renamed from: c */
    private C2759W3 f753c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2675H3(InterfaceC2852m3 interfaceC2852m3) {
        super(interfaceC2852m3);
    }

    @Override // p034j$.util.stream.InterfaceC2840k3, p034j$.util.stream.InterfaceC2852m3
    public void accept(int i) {
        this.f753c.accept(i);
    }

    @Override // p034j$.util.stream.AbstractC2816g3, p034j$.util.stream.InterfaceC2852m3
    /* renamed from: m */
    public void mo335m() {
        int[] iArr = (int[]) this.f753c.mo291e();
        Arrays.sort(iArr);
        this.f954a.mo311n(iArr.length);
        int i = 0;
        if (this.f715b) {
            int length = iArr.length;
            while (i < length) {
                int i2 = iArr[i];
                if (this.f954a.mo310o()) {
                    break;
                }
                this.f954a.accept(i2);
                i++;
            }
        } else {
            int length2 = iArr.length;
            while (i < length2) {
                this.f954a.accept(iArr[i]);
                i++;
            }
        }
        this.f954a.mo335m();
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: n */
    public void mo311n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f753c = j > 0 ? new C2759W3((int) j) : new C2759W3();
    }
}
