package p033j$.util.stream;

import java.util.Arrays;
import java.util.Comparator;
/* renamed from: j$.util.stream.R3 */
/* loaded from: classes2.dex */
final class C3101R3 extends AbstractC3030F3 {

    /* renamed from: d */
    private Object[] f928d;

    /* renamed from: e */
    private int f929e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3101R3(InterfaceC3219m3 interfaceC3219m3, Comparator comparator) {
        super(interfaceC3219m3, comparator);
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        Object[] objArr = this.f928d;
        int i = this.f929e;
        this.f929e = i + 1;
        objArr[i] = obj;
    }

    @Override // p033j$.util.stream.AbstractC3195i3, p033j$.util.stream.InterfaceC3219m3
    /* renamed from: m */
    public void mo339m() {
        int i = 0;
        Arrays.sort(this.f928d, 0, this.f929e, this.f835b);
        this.f1064a.mo315n(this.f929e);
        if (this.f836c) {
            while (i < this.f929e && !this.f1064a.mo314o()) {
                this.f1064a.accept((InterfaceC3219m3) this.f928d[i]);
                i++;
            }
        } else {
            while (i < this.f929e) {
                this.f1064a.accept((InterfaceC3219m3) this.f928d[i]);
                i++;
            }
        }
        this.f1064a.mo339m();
        this.f928d = null;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: n */
    public void mo315n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f928d = new Object[(int) j];
    }
}
