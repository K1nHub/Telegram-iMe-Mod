package p034j$.util.stream;

import java.util.Arrays;
import java.util.Comparator;
/* renamed from: j$.util.stream.R3 */
/* loaded from: classes2.dex */
final class C2836R3 extends AbstractC2765F3 {

    /* renamed from: d */
    private Object[] f833d;

    /* renamed from: e */
    private int f834e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2836R3(InterfaceC2954m3 interfaceC2954m3, Comparator comparator) {
        super(interfaceC2954m3, comparator);
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        Object[] objArr = this.f833d;
        int i = this.f834e;
        this.f834e = i + 1;
        objArr[i] = obj;
    }

    @Override // p034j$.util.stream.AbstractC2930i3, p034j$.util.stream.InterfaceC2954m3
    /* renamed from: m */
    public void mo321m() {
        int i = 0;
        Arrays.sort(this.f833d, 0, this.f834e, this.f740b);
        this.f969a.mo297n(this.f834e);
        if (this.f741c) {
            while (i < this.f834e && !this.f969a.mo296o()) {
                this.f969a.accept((InterfaceC2954m3) this.f833d[i]);
                i++;
            }
        } else {
            while (i < this.f834e) {
                this.f969a.accept((InterfaceC2954m3) this.f833d[i]);
                i++;
            }
        }
        this.f969a.mo321m();
        this.f833d = null;
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: n */
    public void mo297n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f833d = new Object[(int) j];
    }
}
