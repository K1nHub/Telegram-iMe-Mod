package p033j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.H3 */
/* loaded from: classes2.dex */
final class C2903H3 extends AbstractC2879D3 {

    /* renamed from: c */
    private C2987W3 f841c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2903H3(InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
    }

    @Override // p033j$.util.stream.InterfaceC3068k3, p033j$.util.stream.InterfaceC3080m3
    public void accept(int i) {
        this.f841c.accept(i);
    }

    @Override // p033j$.util.stream.AbstractC3044g3, p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public void mo339m() {
        int[] iArr = (int[]) this.f841c.mo295e();
        Arrays.sort(iArr);
        this.f1042a.mo315n(iArr.length);
        int i = 0;
        if (this.f803b) {
            int length = iArr.length;
            while (i < length) {
                int i2 = iArr[i];
                if (this.f1042a.mo314o()) {
                    break;
                }
                this.f1042a.accept(i2);
                i++;
            }
        } else {
            int length2 = iArr.length;
            while (i < length2) {
                this.f1042a.accept(iArr[i]);
                i++;
            }
        }
        this.f1042a.mo339m();
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo315n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f841c = j > 0 ? new C2987W3((int) j) : new C2987W3();
    }
}
