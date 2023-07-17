package p033j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.P3 */
/* loaded from: classes2.dex */
final class C2951P3 extends AbstractC2879D3 {

    /* renamed from: c */
    private int[] f901c;

    /* renamed from: d */
    private int f902d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2951P3(InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
    }

    @Override // p033j$.util.stream.InterfaceC3068k3, p033j$.util.stream.InterfaceC3080m3
    public void accept(int i) {
        int[] iArr = this.f901c;
        int i2 = this.f902d;
        this.f902d = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p033j$.util.stream.AbstractC3044g3, p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public void mo321m() {
        int i = 0;
        Arrays.sort(this.f901c, 0, this.f902d);
        this.f1039a.mo297n(this.f902d);
        if (this.f800b) {
            while (i < this.f902d && !this.f1039a.mo296o()) {
                this.f1039a.accept(this.f901c[i]);
                i++;
            }
        } else {
            while (i < this.f902d) {
                this.f1039a.accept(this.f901c[i]);
                i++;
            }
        }
        this.f1039a.mo321m();
        this.f901c = null;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo297n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f901c = new int[(int) j];
    }
}
