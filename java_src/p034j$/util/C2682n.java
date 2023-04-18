package p034j$.util;

import java.util.Objects;
import p034j$.util.function.C2660k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2661l;
/* renamed from: j$.util.n */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2682n implements InterfaceC2661l {

    /* renamed from: a */
    public final /* synthetic */ Consumer f677a;

    @Override // p034j$.util.function.InterfaceC2661l
    public final void accept(int i) {
        this.f677a.accept(Integer.valueOf(i));
    }

    @Override // p034j$.util.function.InterfaceC2661l
    /* renamed from: l */
    public InterfaceC2661l mo160l(InterfaceC2661l interfaceC2661l) {
        Objects.requireNonNull(interfaceC2661l);
        return new C2660k(this, interfaceC2661l);
    }
}
