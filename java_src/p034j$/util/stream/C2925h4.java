package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2699k;
import p034j$.util.function.InterfaceC2700l;
/* renamed from: j$.util.stream.h4 */
/* loaded from: classes2.dex */
final class C2925h4 extends AbstractC2937j4 implements InterfaceC2700l {

    /* renamed from: c */
    final int[] f963c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2925h4(int i) {
        this.f963c = new int[i];
    }

    @Override // p034j$.util.function.InterfaceC2700l
    public void accept(int i) {
        int[] iArr = this.f963c;
        int i2 = this.f975b;
        this.f975b = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p034j$.util.stream.AbstractC2937j4
    /* renamed from: b */
    public void mo385b(Object obj, long j) {
        InterfaceC2700l interfaceC2700l = (InterfaceC2700l) obj;
        for (int i = 0; i < j; i++) {
            interfaceC2700l.accept(this.f963c[i]);
        }
    }

    @Override // p034j$.util.function.InterfaceC2700l
    /* renamed from: l */
    public InterfaceC2700l mo165l(InterfaceC2700l interfaceC2700l) {
        Objects.requireNonNull(interfaceC2700l);
        return new C2699k(this, interfaceC2700l);
    }
}
