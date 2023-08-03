package p033j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.Q3 */
/* loaded from: classes2.dex */
final class C2957Q3 extends AbstractC2885E3 {

    /* renamed from: c */
    private long[] f911c;

    /* renamed from: d */
    private int f912d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2957Q3(InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
    }

    @Override // p033j$.util.stream.InterfaceC3074l3, p033j$.util.function.InterfaceC2831q
    public void accept(long j) {
        long[] jArr = this.f911c;
        int i = this.f912d;
        this.f912d = i + 1;
        jArr[i] = j;
    }

    @Override // p033j$.util.stream.AbstractC3050h3, p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public void mo339m() {
        int i = 0;
        Arrays.sort(this.f911c, 0, this.f912d);
        this.f1047a.mo315n(this.f912d);
        if (this.f815b) {
            while (i < this.f912d && !this.f1047a.mo314o()) {
                this.f1047a.accept(this.f911c[i]);
                i++;
            }
        } else {
            while (i < this.f912d) {
                this.f1047a.accept(this.f911c[i]);
                i++;
            }
        }
        this.f1047a.mo339m();
        this.f911c = null;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo315n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f911c = new long[(int) j];
    }
}
