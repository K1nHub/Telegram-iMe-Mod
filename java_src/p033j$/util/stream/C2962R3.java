package p033j$.util.stream;

import java.util.Arrays;
import java.util.Comparator;
/* renamed from: j$.util.stream.R3 */
/* loaded from: classes2.dex */
final class C2962R3 extends AbstractC2891F3 {

    /* renamed from: d */
    private Object[] f918d;

    /* renamed from: e */
    private int f919e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2962R3(InterfaceC3080m3 interfaceC3080m3, Comparator comparator) {
        super(interfaceC3080m3, comparator);
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        Object[] objArr = this.f918d;
        int i = this.f919e;
        this.f919e = i + 1;
        objArr[i] = obj;
    }

    @Override // p033j$.util.stream.AbstractC3056i3, p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public void mo339m() {
        int i = 0;
        Arrays.sort(this.f918d, 0, this.f919e, this.f825b);
        this.f1054a.mo315n(this.f919e);
        if (this.f826c) {
            while (i < this.f919e && !this.f1054a.mo314o()) {
                this.f1054a.accept((InterfaceC3080m3) this.f918d[i]);
                i++;
            }
        } else {
            while (i < this.f919e) {
                this.f1054a.accept((InterfaceC3080m3) this.f918d[i]);
                i++;
            }
        }
        this.f1054a.mo339m();
        this.f918d = null;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo315n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f918d = new Object[(int) j];
    }
}
