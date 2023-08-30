package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2964k;
import p033j$.util.function.InterfaceC2965l;
/* renamed from: j$.util.stream.h4 */
/* loaded from: classes2.dex */
final class C3190h4 extends AbstractC3202j4 implements InterfaceC2965l {

    /* renamed from: c */
    final int[] f1058c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3190h4(int i) {
        this.f1058c = new int[i];
    }

    @Override // p033j$.util.function.InterfaceC2965l
    public void accept(int i) {
        int[] iArr = this.f1058c;
        int i2 = this.f1070b;
        this.f1070b = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p033j$.util.stream.AbstractC3202j4
    /* renamed from: b */
    public void mo403b(Object obj, long j) {
        InterfaceC2965l interfaceC2965l = (InterfaceC2965l) obj;
        for (int i = 0; i < j; i++) {
            interfaceC2965l.accept(this.f1058c[i]);
        }
    }

    @Override // p033j$.util.function.InterfaceC2965l
    /* renamed from: l */
    public InterfaceC2965l mo183l(InterfaceC2965l interfaceC2965l) {
        Objects.requireNonNull(interfaceC2965l);
        return new C2964k(this, interfaceC2965l);
    }
}
