package p034j$.util;

import java.util.Objects;
import p034j$.util.function.C2597k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2598l;
/* renamed from: j$.util.n */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2619n implements InterfaceC2598l {

    /* renamed from: a */
    public final /* synthetic */ Consumer f677a;

    @Override // p034j$.util.function.InterfaceC2598l
    public final void accept(int i) {
        this.f677a.accept(Integer.valueOf(i));
    }

    @Override // p034j$.util.function.InterfaceC2598l
    /* renamed from: l */
    public InterfaceC2598l mo179l(InterfaceC2598l interfaceC2598l) {
        Objects.requireNonNull(interfaceC2598l);
        return new C2597k(this, interfaceC2598l);
    }
}
