package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2597k;
import p034j$.util.function.InterfaceC2598l;
/* renamed from: j$.util.stream.h4 */
/* loaded from: classes2.dex */
final class C2823h4 extends AbstractC2835j4 implements InterfaceC2598l {

    /* renamed from: c */
    final int[] f960c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2823h4(int i) {
        this.f960c = new int[i];
    }

    @Override // p034j$.util.function.InterfaceC2598l
    public void accept(int i) {
        int[] iArr = this.f960c;
        int i2 = this.f972b;
        this.f972b = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p034j$.util.stream.AbstractC2835j4
    /* renamed from: b */
    public void mo399b(Object obj, long j) {
        InterfaceC2598l interfaceC2598l = (InterfaceC2598l) obj;
        for (int i = 0; i < j; i++) {
            interfaceC2598l.accept(this.f960c[i]);
        }
    }

    @Override // p034j$.util.function.InterfaceC2598l
    /* renamed from: l */
    public InterfaceC2598l mo179l(InterfaceC2598l interfaceC2598l) {
        Objects.requireNonNull(interfaceC2598l);
        return new C2597k(this, interfaceC2598l);
    }
}
