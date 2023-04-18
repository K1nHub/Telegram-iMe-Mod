package p034j$.util.stream;

import java.util.Arrays;
import java.util.Comparator;
/* renamed from: j$.util.stream.R3 */
/* loaded from: classes2.dex */
final class C2797R3 extends AbstractC2726F3 {

    /* renamed from: d */
    private Object[] f830d;

    /* renamed from: e */
    private int f831e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2797R3(InterfaceC2915m3 interfaceC2915m3, Comparator comparator) {
        super(interfaceC2915m3, comparator);
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        Object[] objArr = this.f830d;
        int i = this.f831e;
        this.f831e = i + 1;
        objArr[i] = obj;
    }

    @Override // p034j$.util.stream.AbstractC2891i3, p034j$.util.stream.InterfaceC2915m3
    /* renamed from: m */
    public void mo316m() {
        int i = 0;
        Arrays.sort(this.f830d, 0, this.f831e, this.f737b);
        this.f966a.mo292n(this.f831e);
        if (this.f738c) {
            while (i < this.f831e && !this.f966a.mo291o()) {
                this.f966a.accept((InterfaceC2915m3) this.f830d[i]);
                i++;
            }
        } else {
            while (i < this.f831e) {
                this.f966a.accept((InterfaceC2915m3) this.f830d[i]);
                i++;
            }
        }
        this.f966a.mo316m();
        this.f830d = null;
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: n */
    public void mo292n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f830d = new Object[(int) j];
    }
}
