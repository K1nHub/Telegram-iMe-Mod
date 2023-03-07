package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2459k;
import p034j$.util.function.InterfaceC2460l;
/* renamed from: j$.util.stream.h4 */
/* loaded from: classes2.dex */
final class C2685h4 extends AbstractC2697j4 implements InterfaceC2460l {

    /* renamed from: c */
    final int[] f954c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2685h4(int i) {
        this.f954c = new int[i];
    }

    @Override // p034j$.util.function.InterfaceC2460l
    public void accept(int i) {
        int[] iArr = this.f954c;
        int i2 = this.f966b;
        this.f966b = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p034j$.util.stream.AbstractC2697j4
    /* renamed from: b */
    public void mo400b(Object obj, long j) {
        InterfaceC2460l interfaceC2460l = (InterfaceC2460l) obj;
        for (int i = 0; i < j; i++) {
            interfaceC2460l.accept(this.f954c[i]);
        }
    }

    @Override // p034j$.util.function.InterfaceC2460l
    /* renamed from: l */
    public InterfaceC2460l mo180l(InterfaceC2460l interfaceC2460l) {
        Objects.requireNonNull(interfaceC2460l);
        return new C2459k(this, interfaceC2460l);
    }
}
