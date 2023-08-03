package p033j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.P3 */
/* loaded from: classes2.dex */
final class C2951P3 extends AbstractC2879D3 {

    /* renamed from: c */
    private int[] f904c;

    /* renamed from: d */
    private int f905d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2951P3(InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
    }

    @Override // p033j$.util.stream.InterfaceC3068k3, p033j$.util.stream.InterfaceC3080m3
    public void accept(int i) {
        int[] iArr = this.f904c;
        int i2 = this.f905d;
        this.f905d = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p033j$.util.stream.AbstractC3044g3, p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public void mo339m() {
        int i = 0;
        Arrays.sort(this.f904c, 0, this.f905d);
        this.f1042a.mo315n(this.f905d);
        if (this.f803b) {
            while (i < this.f905d && !this.f1042a.mo314o()) {
                this.f1042a.accept(this.f904c[i]);
                i++;
            }
        } else {
            while (i < this.f905d) {
                this.f1042a.accept(this.f904c[i]);
                i++;
            }
        }
        this.f1042a.mo339m();
        this.f904c = null;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo315n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f904c = new int[(int) j];
    }
}
