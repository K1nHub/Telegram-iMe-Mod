package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2464p;
import p034j$.util.function.InterfaceC2465q;
/* renamed from: j$.util.stream.i4 */
/* loaded from: classes2.dex */
final class C2691i4 extends AbstractC2697j4 implements InterfaceC2465q {

    /* renamed from: c */
    final long[] f961c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2691i4(int i) {
        this.f961c = new long[i];
    }

    @Override // p034j$.util.function.InterfaceC2465q
    public void accept(long j) {
        long[] jArr = this.f961c;
        int i = this.f966b;
        this.f966b = i + 1;
        jArr[i] = j;
    }

    @Override // p034j$.util.stream.AbstractC2697j4
    /* renamed from: b */
    public void mo400b(Object obj, long j) {
        InterfaceC2465q interfaceC2465q = (InterfaceC2465q) obj;
        for (int i = 0; i < j; i++) {
            interfaceC2465q.accept(this.f961c[i]);
        }
    }

    @Override // p034j$.util.function.InterfaceC2465q
    /* renamed from: f */
    public InterfaceC2465q mo155f(InterfaceC2465q interfaceC2465q) {
        Objects.requireNonNull(interfaceC2465q);
        return new C2464p(this, interfaceC2465q);
    }
}
