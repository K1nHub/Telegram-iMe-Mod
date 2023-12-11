package p033j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.H3 */
/* loaded from: classes2.dex */
final class C2896H3 extends AbstractC2872D3 {

    /* renamed from: c */
    private C2980W3 f891c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2896H3(InterfaceC3073m3 interfaceC3073m3) {
        super(interfaceC3073m3);
    }

    @Override // p033j$.util.stream.InterfaceC3061k3, p033j$.util.stream.InterfaceC3073m3
    public void accept(int i) {
        this.f891c.accept(i);
    }

    @Override // p033j$.util.stream.AbstractC3037g3, p033j$.util.stream.InterfaceC3073m3
    /* renamed from: l */
    public void mo385l() {
        int[] iArr = (int[]) this.f891c.mo341e();
        Arrays.sort(iArr);
        this.f1092a.mo361m(iArr.length);
        int i = 0;
        if (this.f853b) {
            int length = iArr.length;
            while (i < length) {
                int i2 = iArr[i];
                if (this.f1092a.mo360o()) {
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
        this.f1092a.mo385l();
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: m */
    public void mo361m(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f891c = j > 0 ? new C2980W3((int) j) : new C2980W3();
    }
}
