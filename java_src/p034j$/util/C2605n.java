package p034j$.util;

import java.util.Objects;
import p034j$.util.function.C2583k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2584l;
/* renamed from: j$.util.n */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2605n implements InterfaceC2584l {

    /* renamed from: a */
    public final /* synthetic */ Consumer f676a;

    @Override // p034j$.util.function.InterfaceC2584l
    public final void accept(int i) {
        this.f676a.accept(Integer.valueOf(i));
    }

    @Override // p034j$.util.function.InterfaceC2584l
    /* renamed from: l */
    public InterfaceC2584l mo180l(InterfaceC2584l interfaceC2584l) {
        Objects.requireNonNull(interfaceC2584l);
        return new C2583k(this, interfaceC2584l);
    }
}
