package p033j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.Q3 */
/* loaded from: classes2.dex */
final class C2948Q3 extends AbstractC2876E3 {

    /* renamed from: c */
    private long[] f961c;

    /* renamed from: d */
    private int f962d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2948Q3(InterfaceC3071m3 interfaceC3071m3) {
        super(interfaceC3071m3);
    }

    @Override // p033j$.util.stream.InterfaceC3065l3, p033j$.util.function.InterfaceC2825p
    public void accept(long j) {
        long[] jArr = this.f961c;
        int i = this.f962d;
        this.f962d = i + 1;
        jArr[i] = j;
    }

    @Override // p033j$.util.stream.AbstractC3041h3, p033j$.util.stream.InterfaceC3071m3
    /* renamed from: l */
    public void mo388l() {
        int i = 0;
        Arrays.sort(this.f961c, 0, this.f962d);
        this.f1097a.mo364m(this.f962d);
        if (this.f865b) {
            while (i < this.f962d && !this.f1097a.mo363o()) {
                this.f1097a.accept(this.f961c[i]);
                i++;
            }
        } else {
            while (i < this.f962d) {
                this.f1097a.accept(this.f961c[i]);
                i++;
            }
        }
        this.f1097a.mo388l();
        this.f961c = null;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: m */
    public void mo364m(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f961c = new long[(int) j];
    }
}
