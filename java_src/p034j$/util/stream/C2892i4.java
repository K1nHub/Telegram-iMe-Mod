package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2665p;
import p034j$.util.function.InterfaceC2666q;
/* renamed from: j$.util.stream.i4 */
/* loaded from: classes2.dex */
final class C2892i4 extends AbstractC2898j4 implements InterfaceC2666q {

    /* renamed from: c */
    final long[] f967c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2892i4(int i) {
        this.f967c = new long[i];
    }

    @Override // p034j$.util.function.InterfaceC2666q
    public void accept(long j) {
        long[] jArr = this.f967c;
        int i = this.f972b;
        this.f972b = i + 1;
        jArr[i] = j;
    }

    @Override // p034j$.util.stream.AbstractC2898j4
    /* renamed from: b */
    public void mo380b(Object obj, long j) {
        InterfaceC2666q interfaceC2666q = (InterfaceC2666q) obj;
        for (int i = 0; i < j; i++) {
            interfaceC2666q.accept(this.f967c[i]);
        }
    }

    @Override // p034j$.util.function.InterfaceC2666q
    /* renamed from: f */
    public InterfaceC2666q mo135f(InterfaceC2666q interfaceC2666q) {
        Objects.requireNonNull(interfaceC2666q);
        return new C2665p(this, interfaceC2666q);
    }
}
