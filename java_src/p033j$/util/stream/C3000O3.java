package p033j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.O3 */
/* loaded from: classes2.dex */
final class C3000O3 extends AbstractC2928C3 {

    /* renamed from: c */
    private double[] f900c;

    /* renamed from: d */
    private int f901d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3000O3(InterfaceC3135m3 interfaceC3135m3) {
        super(interfaceC3135m3);
    }

    @Override // p033j$.util.stream.InterfaceC3117j3, p033j$.util.stream.InterfaceC3135m3
    public void accept(double d) {
        double[] dArr = this.f900c;
        int i = this.f901d;
        this.f901d = i + 1;
        dArr[i] = d;
    }

    @Override // p033j$.util.stream.AbstractC3093f3, p033j$.util.stream.InterfaceC3135m3
    /* renamed from: m */
    public void mo339m() {
        int i = 0;
        Arrays.sort(this.f900c, 0, this.f901d);
        this.f1031a.mo315n(this.f901d);
        if (this.f797b) {
            while (i < this.f901d && !this.f1031a.mo314o()) {
                this.f1031a.accept(this.f900c[i]);
                i++;
            }
        } else {
            while (i < this.f901d) {
                this.f1031a.accept(this.f900c[i]);
                i++;
            }
        }
        this.f1031a.mo339m();
        this.f900c = null;
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: n */
    public void mo315n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f900c = new double[(int) j];
    }
}
