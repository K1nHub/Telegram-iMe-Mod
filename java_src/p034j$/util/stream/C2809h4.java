package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2583k;
import p034j$.util.function.InterfaceC2584l;
/* renamed from: j$.util.stream.h4 */
/* loaded from: classes2.dex */
final class C2809h4 extends AbstractC2821j4 implements InterfaceC2584l {

    /* renamed from: c */
    final int[] f959c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2809h4(int i) {
        this.f959c = new int[i];
    }

    @Override // p034j$.util.function.InterfaceC2584l
    public void accept(int i) {
        int[] iArr = this.f959c;
        int i2 = this.f971b;
        this.f971b = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p034j$.util.stream.AbstractC2821j4
    /* renamed from: b */
    public void mo400b(Object obj, long j) {
        InterfaceC2584l interfaceC2584l = (InterfaceC2584l) obj;
        for (int i = 0; i < j; i++) {
            interfaceC2584l.accept(this.f959c[i]);
        }
    }

    @Override // p034j$.util.function.InterfaceC2584l
    /* renamed from: l */
    public InterfaceC2584l mo180l(InterfaceC2584l interfaceC2584l) {
        Objects.requireNonNull(interfaceC2584l);
        return new C2583k(this, interfaceC2584l);
    }
}
