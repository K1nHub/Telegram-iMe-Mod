package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2704k;
import p034j$.util.function.InterfaceC2705l;
/* renamed from: j$.util.stream.h4 */
/* loaded from: classes2.dex */
final class C2930h4 extends AbstractC2942j4 implements InterfaceC2705l {

    /* renamed from: c */
    final int[] f963c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2930h4(int i) {
        this.f963c = new int[i];
    }

    @Override // p034j$.util.function.InterfaceC2705l
    public void accept(int i) {
        int[] iArr = this.f963c;
        int i2 = this.f975b;
        this.f975b = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p034j$.util.stream.AbstractC2942j4
    /* renamed from: b */
    public void mo385b(Object obj, long j) {
        InterfaceC2705l interfaceC2705l = (InterfaceC2705l) obj;
        for (int i = 0; i < j; i++) {
            interfaceC2705l.accept(this.f963c[i]);
        }
    }

    @Override // p034j$.util.function.InterfaceC2705l
    /* renamed from: l */
    public InterfaceC2705l mo165l(InterfaceC2705l interfaceC2705l) {
        Objects.requireNonNull(interfaceC2705l);
        return new C2704k(this, interfaceC2705l);
    }
}
