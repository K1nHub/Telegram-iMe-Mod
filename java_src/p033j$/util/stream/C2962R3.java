package p033j$.util.stream;

import java.util.Arrays;
import java.util.Comparator;
/* renamed from: j$.util.stream.R3 */
/* loaded from: classes2.dex */
final class C2962R3 extends AbstractC2891F3 {

    /* renamed from: d */
    private Object[] f915d;

    /* renamed from: e */
    private int f916e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2962R3(InterfaceC3080m3 interfaceC3080m3, Comparator comparator) {
        super(interfaceC3080m3, comparator);
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        Object[] objArr = this.f915d;
        int i = this.f916e;
        this.f916e = i + 1;
        objArr[i] = obj;
    }

    @Override // p033j$.util.stream.AbstractC3056i3, p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public void mo321m() {
        int i = 0;
        Arrays.sort(this.f915d, 0, this.f916e, this.f822b);
        this.f1051a.mo297n(this.f916e);
        if (this.f823c) {
            while (i < this.f916e && !this.f1051a.mo296o()) {
                this.f1051a.accept((InterfaceC3080m3) this.f915d[i]);
                i++;
            }
        } else {
            while (i < this.f916e) {
                this.f1051a.accept((InterfaceC3080m3) this.f915d[i]);
                i++;
            }
        }
        this.f1051a.mo321m();
        this.f915d = null;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo297n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f915d = new Object[(int) j];
    }
}
