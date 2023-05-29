package p034j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.Q3 */
/* loaded from: classes2.dex */
final class C2831Q3 extends AbstractC2759E3 {

    /* renamed from: c */
    private long[] f826c;

    /* renamed from: d */
    private int f827d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2831Q3(InterfaceC2954m3 interfaceC2954m3) {
        super(interfaceC2954m3);
    }

    @Override // p034j$.util.stream.InterfaceC2948l3, p034j$.util.function.InterfaceC2705q
    public void accept(long j) {
        long[] jArr = this.f826c;
        int i = this.f827d;
        this.f827d = i + 1;
        jArr[i] = j;
    }

    @Override // p034j$.util.stream.AbstractC2924h3, p034j$.util.stream.InterfaceC2954m3
    /* renamed from: m */
    public void mo321m() {
        int i = 0;
        Arrays.sort(this.f826c, 0, this.f827d);
        this.f962a.mo297n(this.f827d);
        if (this.f730b) {
            while (i < this.f827d && !this.f962a.mo296o()) {
                this.f962a.accept(this.f826c[i]);
                i++;
            }
        } else {
            while (i < this.f827d) {
                this.f962a.accept(this.f826c[i]);
                i++;
            }
        }
        this.f962a.mo321m();
        this.f826c = null;
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: n */
    public void mo297n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f826c = new long[(int) j];
    }
}
