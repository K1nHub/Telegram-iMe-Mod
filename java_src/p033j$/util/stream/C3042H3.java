package p033j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.H3 */
/* loaded from: classes2.dex */
final class C3042H3 extends AbstractC3018D3 {

    /* renamed from: c */
    private C3126W3 f851c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3042H3(InterfaceC3219m3 interfaceC3219m3) {
        super(interfaceC3219m3);
    }

    @Override // p033j$.util.stream.InterfaceC3207k3, p033j$.util.stream.InterfaceC3219m3
    public void accept(int i) {
        this.f851c.accept(i);
    }

    @Override // p033j$.util.stream.AbstractC3183g3, p033j$.util.stream.InterfaceC3219m3
    /* renamed from: m */
    public void mo339m() {
        int[] iArr = (int[]) this.f851c.mo295e();
        Arrays.sort(iArr);
        this.f1052a.mo315n(iArr.length);
        int i = 0;
        if (this.f813b) {
            int length = iArr.length;
            while (i < length) {
                int i2 = iArr[i];
                if (this.f1052a.mo314o()) {
                    break;
                }
                this.f1052a.accept(i2);
                i++;
            }
        } else {
            int length2 = iArr.length;
            while (i < length2) {
                this.f1052a.accept(iArr[i]);
                i++;
            }
        }
        this.f1052a.mo339m();
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: n */
    public void mo315n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f851c = j > 0 ? new C3126W3((int) j) : new C3126W3();
    }
}
