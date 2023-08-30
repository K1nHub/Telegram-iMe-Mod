package p033j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.P3 */
/* loaded from: classes2.dex */
final class C3090P3 extends AbstractC3018D3 {

    /* renamed from: c */
    private int[] f914c;

    /* renamed from: d */
    private int f915d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3090P3(InterfaceC3219m3 interfaceC3219m3) {
        super(interfaceC3219m3);
    }

    @Override // p033j$.util.stream.InterfaceC3207k3, p033j$.util.stream.InterfaceC3219m3
    public void accept(int i) {
        int[] iArr = this.f914c;
        int i2 = this.f915d;
        this.f915d = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p033j$.util.stream.AbstractC3183g3, p033j$.util.stream.InterfaceC3219m3
    /* renamed from: m */
    public void mo339m() {
        int i = 0;
        Arrays.sort(this.f914c, 0, this.f915d);
        this.f1052a.mo315n(this.f915d);
        if (this.f813b) {
            while (i < this.f915d && !this.f1052a.mo314o()) {
                this.f1052a.accept(this.f914c[i]);
                i++;
            }
        } else {
            while (i < this.f915d) {
                this.f1052a.accept(this.f914c[i]);
                i++;
            }
        }
        this.f1052a.mo339m();
        this.f914c = null;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: n */
    public void mo315n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f914c = new int[(int) j];
    }
}
