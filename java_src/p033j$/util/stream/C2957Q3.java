package p033j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.Q3 */
/* loaded from: classes2.dex */
final class C2957Q3 extends AbstractC2885E3 {

    /* renamed from: c */
    private long[] f908c;

    /* renamed from: d */
    private int f909d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2957Q3(InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
    }

    @Override // p033j$.util.stream.InterfaceC3074l3, p033j$.util.function.InterfaceC2831q
    public void accept(long j) {
        long[] jArr = this.f908c;
        int i = this.f909d;
        this.f909d = i + 1;
        jArr[i] = j;
    }

    @Override // p033j$.util.stream.AbstractC3050h3, p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public void mo321m() {
        int i = 0;
        Arrays.sort(this.f908c, 0, this.f909d);
        this.f1044a.mo297n(this.f909d);
        if (this.f812b) {
            while (i < this.f909d && !this.f1044a.mo296o()) {
                this.f1044a.accept(this.f908c[i]);
                i++;
            }
        } else {
            while (i < this.f909d) {
                this.f1044a.accept(this.f908c[i]);
                i++;
            }
        }
        this.f1044a.mo321m();
        this.f908c = null;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo297n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f908c = new long[(int) j];
    }
}
