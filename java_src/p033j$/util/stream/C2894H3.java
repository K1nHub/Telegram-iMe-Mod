package p033j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.H3 */
/* loaded from: classes2.dex */
final class C2894H3 extends AbstractC2870D3 {

    /* renamed from: c */
    private C2978W3 f891c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2894H3(InterfaceC3071m3 interfaceC3071m3) {
        super(interfaceC3071m3);
    }

    @Override // p033j$.util.stream.InterfaceC3059k3, p033j$.util.stream.InterfaceC3071m3
    public void accept(int i) {
        this.f891c.accept(i);
    }

    @Override // p033j$.util.stream.AbstractC3035g3, p033j$.util.stream.InterfaceC3071m3
    /* renamed from: l */
    public void mo388l() {
        int[] iArr = (int[]) this.f891c.mo344e();
        Arrays.sort(iArr);
        this.f1092a.mo364m(iArr.length);
        int i = 0;
        if (this.f853b) {
            int length = iArr.length;
            while (i < length) {
                int i2 = iArr[i];
                if (this.f1092a.mo363o()) {
                    break;
                }
                this.f1092a.accept(i2);
                i++;
            }
        } else {
            int length2 = iArr.length;
            while (i < length2) {
                this.f1092a.accept(iArr[i]);
                i++;
            }
        }
        this.f1092a.mo388l();
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: m */
    public void mo364m(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f891c = j > 0 ? new C2978W3((int) j) : new C2978W3();
    }
}
