package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2660k;
import p034j$.util.function.InterfaceC2661l;
/* renamed from: j$.util.stream.h4 */
/* loaded from: classes2.dex */
final class C2886h4 extends AbstractC2898j4 implements InterfaceC2661l {

    /* renamed from: c */
    final int[] f960c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2886h4(int i) {
        this.f960c = new int[i];
    }

    @Override // p034j$.util.function.InterfaceC2661l
    public void accept(int i) {
        int[] iArr = this.f960c;
        int i2 = this.f972b;
        this.f972b = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p034j$.util.stream.AbstractC2898j4
    /* renamed from: b */
    public void mo380b(Object obj, long j) {
        InterfaceC2661l interfaceC2661l = (InterfaceC2661l) obj;
        for (int i = 0; i < j; i++) {
            interfaceC2661l.accept(this.f960c[i]);
        }
    }

    @Override // p034j$.util.function.InterfaceC2661l
    /* renamed from: l */
    public InterfaceC2661l mo160l(InterfaceC2661l interfaceC2661l) {
        Objects.requireNonNull(interfaceC2661l);
        return new C2660k(this, interfaceC2661l);
    }
}
