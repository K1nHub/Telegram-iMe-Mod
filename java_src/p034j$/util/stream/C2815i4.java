package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2588p;
import p034j$.util.function.InterfaceC2589q;
/* renamed from: j$.util.stream.i4 */
/* loaded from: classes2.dex */
final class C2815i4 extends AbstractC2821j4 implements InterfaceC2589q {

    /* renamed from: c */
    final long[] f966c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2815i4(int i) {
        this.f966c = new long[i];
    }

    @Override // p034j$.util.function.InterfaceC2589q
    public void accept(long j) {
        long[] jArr = this.f966c;
        int i = this.f971b;
        this.f971b = i + 1;
        jArr[i] = j;
    }

    @Override // p034j$.util.stream.AbstractC2821j4
    /* renamed from: b */
    public void mo400b(Object obj, long j) {
        InterfaceC2589q interfaceC2589q = (InterfaceC2589q) obj;
        for (int i = 0; i < j; i++) {
            interfaceC2589q.accept(this.f966c[i]);
        }
    }

    @Override // p034j$.util.function.InterfaceC2589q
    /* renamed from: f */
    public InterfaceC2589q mo155f(InterfaceC2589q interfaceC2589q) {
        Objects.requireNonNull(interfaceC2589q);
        return new C2588p(this, interfaceC2589q);
    }
}
