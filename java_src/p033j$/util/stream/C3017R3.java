package p033j$.util.stream;

import java.util.Arrays;
import java.util.Comparator;
/* renamed from: j$.util.stream.R3 */
/* loaded from: classes2.dex */
final class C3017R3 extends AbstractC2946F3 {

    /* renamed from: d */
    private Object[] f919d;

    /* renamed from: e */
    private int f920e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3017R3(InterfaceC3135m3 interfaceC3135m3, Comparator comparator) {
        super(interfaceC3135m3, comparator);
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        Object[] objArr = this.f919d;
        int i = this.f920e;
        this.f920e = i + 1;
        objArr[i] = obj;
    }

    @Override // p033j$.util.stream.AbstractC3111i3, p033j$.util.stream.InterfaceC3135m3
    /* renamed from: m */
    public void mo339m() {
        int i = 0;
        Arrays.sort(this.f919d, 0, this.f920e, this.f826b);
        this.f1055a.mo315n(this.f920e);
        if (this.f827c) {
            while (i < this.f920e && !this.f1055a.mo314o()) {
                this.f1055a.accept((InterfaceC3135m3) this.f919d[i]);
                i++;
            }
        } else {
            while (i < this.f920e) {
                this.f1055a.accept((InterfaceC3135m3) this.f919d[i]);
                i++;
            }
        }
        this.f1055a.mo339m();
        this.f919d = null;
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: n */
    public void mo315n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f919d = new Object[(int) j];
    }
}
