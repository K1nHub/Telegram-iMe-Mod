package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2825k;
import p033j$.util.function.InterfaceC2826l;
/* renamed from: j$.util.stream.h4 */
/* loaded from: classes2.dex */
final class C3051h4 extends AbstractC3063j4 implements InterfaceC2826l {

    /* renamed from: c */
    final int[] f1045c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3051h4(int i) {
        this.f1045c = new int[i];
    }

    @Override // p033j$.util.function.InterfaceC2826l
    public void accept(int i) {
        int[] iArr = this.f1045c;
        int i2 = this.f1057b;
        this.f1057b = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p033j$.util.stream.AbstractC3063j4
    /* renamed from: b */
    public void mo385b(Object obj, long j) {
        InterfaceC2826l interfaceC2826l = (InterfaceC2826l) obj;
        for (int i = 0; i < j; i++) {
            interfaceC2826l.accept(this.f1045c[i]);
        }
    }

    @Override // p033j$.util.function.InterfaceC2826l
    /* renamed from: l */
    public InterfaceC2826l mo165l(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        return new C2825k(this, interfaceC2826l);
    }
}
