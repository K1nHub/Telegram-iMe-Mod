package p034j$.util.stream;

import java.util.Arrays;
import java.util.Comparator;
/* renamed from: j$.util.stream.R3 */
/* loaded from: classes2.dex */
final class C2596R3 extends AbstractC2525F3 {

    /* renamed from: d */
    private Object[] f824d;

    /* renamed from: e */
    private int f825e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2596R3(InterfaceC2714m3 interfaceC2714m3, Comparator comparator) {
        super(interfaceC2714m3, comparator);
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        Object[] objArr = this.f824d;
        int i = this.f825e;
        this.f825e = i + 1;
        objArr[i] = obj;
    }

    @Override // p034j$.util.stream.AbstractC2690i3, p034j$.util.stream.InterfaceC2714m3
    /* renamed from: m */
    public void mo336m() {
        int i = 0;
        Arrays.sort(this.f824d, 0, this.f825e, this.f731b);
        this.f960a.mo312n(this.f825e);
        if (this.f732c) {
            while (i < this.f825e && !this.f960a.mo311o()) {
                this.f960a.accept((InterfaceC2714m3) this.f824d[i]);
                i++;
            }
        } else {
            while (i < this.f825e) {
                this.f960a.accept((InterfaceC2714m3) this.f824d[i]);
                i++;
            }
        }
        this.f960a.mo336m();
        this.f824d = null;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: n */
    public void mo312n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f824d = new Object[(int) j];
    }
}
