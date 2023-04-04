package p035j$.util.stream;

import java.util.Arrays;
import java.util.Comparator;
/* renamed from: j$.util.stream.R3 */
/* loaded from: classes2.dex */
final class C2810R3 extends AbstractC2739F3 {

    /* renamed from: d */
    private Object[] f835d;

    /* renamed from: e */
    private int f836e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2810R3(InterfaceC2928m3 interfaceC2928m3, Comparator comparator) {
        super(interfaceC2928m3, comparator);
    }

    @Override // p035j$.util.function.Consumer
    public void accept(Object obj) {
        Object[] objArr = this.f835d;
        int i = this.f836e;
        this.f836e = i + 1;
        objArr[i] = obj;
    }

    @Override // p035j$.util.stream.AbstractC2904i3, p035j$.util.stream.InterfaceC2928m3
    /* renamed from: m */
    public void mo330m() {
        int i = 0;
        Arrays.sort(this.f835d, 0, this.f836e, this.f742b);
        this.f971a.mo306n(this.f836e);
        if (this.f743c) {
            while (i < this.f836e && !this.f971a.mo305o()) {
                this.f971a.accept((InterfaceC2928m3) this.f835d[i]);
                i++;
            }
        } else {
            while (i < this.f836e) {
                this.f971a.accept((InterfaceC2928m3) this.f835d[i]);
                i++;
            }
        }
        this.f971a.mo330m();
        this.f835d = null;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: n */
    public void mo306n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f835d = new Object[(int) j];
    }
}
