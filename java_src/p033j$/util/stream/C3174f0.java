package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2982j;
import p033j$.util.function.C2964k;
import p033j$.util.function.InterfaceC2965l;
/* renamed from: j$.util.stream.f0 */
/* loaded from: classes2.dex */
final class C3174f0 extends AbstractC3192i0 implements InterfaceC3207k3 {
    @Override // p033j$.util.stream.AbstractC3192i0, p033j$.util.stream.InterfaceC3219m3
    public void accept(int i) {
        accept(Integer.valueOf(i));
    }

    @Override // p033j$.util.function.InterfaceC2978y
    public Object get() {
        if (this.f1060a) {
            return C2982j.m546d(((Integer) this.f1061b).intValue());
        }
        return null;
    }

    @Override // p033j$.util.function.InterfaceC2965l
    /* renamed from: l */
    public InterfaceC2965l mo183l(InterfaceC2965l interfaceC2965l) {
        Objects.requireNonNull(interfaceC2965l);
        return new C2964k(this, interfaceC2965l);
    }
}
