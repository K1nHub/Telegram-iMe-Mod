package p033j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.Q3 */
/* loaded from: classes2.dex */
final class C3012Q3 extends AbstractC2940E3 {

    /* renamed from: c */
    private long[] f912c;

    /* renamed from: d */
    private int f913d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3012Q3(InterfaceC3135m3 interfaceC3135m3) {
        super(interfaceC3135m3);
    }

    @Override // p033j$.util.stream.InterfaceC3129l3, p033j$.util.function.InterfaceC2886q
    public void accept(long j) {
        long[] jArr = this.f912c;
        int i = this.f913d;
        this.f913d = i + 1;
        jArr[i] = j;
    }

    @Override // p033j$.util.stream.AbstractC3105h3, p033j$.util.stream.InterfaceC3135m3
    /* renamed from: m */
    public void mo339m() {
        int i = 0;
        Arrays.sort(this.f912c, 0, this.f913d);
        this.f1048a.mo315n(this.f913d);
        if (this.f816b) {
            while (i < this.f913d && !this.f1048a.mo314o()) {
                this.f1048a.accept(this.f912c[i]);
                i++;
            }
        } else {
            while (i < this.f913d) {
                this.f1048a.accept(this.f912c[i]);
                i++;
            }
        }
        this.f1048a.mo339m();
        this.f912c = null;
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: n */
    public void mo315n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f912c = new long[(int) j];
    }
}
