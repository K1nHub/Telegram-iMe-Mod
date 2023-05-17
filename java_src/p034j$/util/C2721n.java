package p034j$.util;

import java.util.Objects;
import p034j$.util.function.C2699k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2700l;
/* renamed from: j$.util.n */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2721n implements InterfaceC2700l {

    /* renamed from: a */
    public final /* synthetic */ Consumer f680a;

    @Override // p034j$.util.function.InterfaceC2700l
    public final void accept(int i) {
        this.f680a.accept(Integer.valueOf(i));
    }

    @Override // p034j$.util.function.InterfaceC2700l
    /* renamed from: l */
    public InterfaceC2700l mo165l(InterfaceC2700l interfaceC2700l) {
        Objects.requireNonNull(interfaceC2700l);
        return new C2699k(this, interfaceC2700l);
    }
}
