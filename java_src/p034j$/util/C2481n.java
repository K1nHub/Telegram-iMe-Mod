package p034j$.util;

import java.util.Objects;
import p034j$.util.function.C2459k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2460l;
/* renamed from: j$.util.n */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2481n implements InterfaceC2460l {

    /* renamed from: a */
    public final /* synthetic */ Consumer f671a;

    @Override // p034j$.util.function.InterfaceC2460l
    public final void accept(int i) {
        this.f671a.accept(Integer.valueOf(i));
    }

    @Override // p034j$.util.function.InterfaceC2460l
    /* renamed from: l */
    public InterfaceC2460l mo180l(InterfaceC2460l interfaceC2460l) {
        Objects.requireNonNull(interfaceC2460l);
        return new C2459k(this, interfaceC2460l);
    }
}
