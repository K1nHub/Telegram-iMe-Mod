package p034j$.util.stream;

import java.util.Arrays;
import java.util.Comparator;
/* renamed from: j$.util.stream.R3 */
/* loaded from: classes2.dex */
final class C2734R3 extends AbstractC2663F3 {

    /* renamed from: d */
    private Object[] f830d;

    /* renamed from: e */
    private int f831e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2734R3(InterfaceC2852m3 interfaceC2852m3, Comparator comparator) {
        super(interfaceC2852m3, comparator);
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        Object[] objArr = this.f830d;
        int i = this.f831e;
        this.f831e = i + 1;
        objArr[i] = obj;
    }

    @Override // p034j$.util.stream.AbstractC2828i3, p034j$.util.stream.InterfaceC2852m3
    /* renamed from: m */
    public void mo335m() {
        int i = 0;
        Arrays.sort(this.f830d, 0, this.f831e, this.f737b);
        this.f966a.mo311n(this.f831e);
        if (this.f738c) {
            while (i < this.f831e && !this.f966a.mo310o()) {
                this.f966a.accept((InterfaceC2852m3) this.f830d[i]);
                i++;
            }
        } else {
            while (i < this.f831e) {
                this.f966a.accept((InterfaceC2852m3) this.f830d[i]);
                i++;
            }
        }
        this.f966a.mo335m();
        this.f830d = null;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: n */
    public void mo311n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f830d = new Object[(int) j];
    }
}
