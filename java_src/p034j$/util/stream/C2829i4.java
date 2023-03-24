package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2602p;
import p034j$.util.function.InterfaceC2603q;
/* renamed from: j$.util.stream.i4 */
/* loaded from: classes2.dex */
final class C2829i4 extends AbstractC2835j4 implements InterfaceC2603q {

    /* renamed from: c */
    final long[] f967c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2829i4(int i) {
        this.f967c = new long[i];
    }

    @Override // p034j$.util.function.InterfaceC2603q
    public void accept(long j) {
        long[] jArr = this.f967c;
        int i = this.f972b;
        this.f972b = i + 1;
        jArr[i] = j;
    }

    @Override // p034j$.util.stream.AbstractC2835j4
    /* renamed from: b */
    public void mo399b(Object obj, long j) {
        InterfaceC2603q interfaceC2603q = (InterfaceC2603q) obj;
        for (int i = 0; i < j; i++) {
            interfaceC2603q.accept(this.f967c[i]);
        }
    }

    @Override // p034j$.util.function.InterfaceC2603q
    /* renamed from: f */
    public InterfaceC2603q mo154f(InterfaceC2603q interfaceC2603q) {
        Objects.requireNonNull(interfaceC2603q);
        return new C2602p(this, interfaceC2603q);
    }
}
