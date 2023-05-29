package p034j$.util;

import java.util.Objects;
import p034j$.util.function.C2704k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2705l;
/* renamed from: j$.util.n */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2726n implements InterfaceC2705l {

    /* renamed from: a */
    public final /* synthetic */ Consumer f680a;

    @Override // p034j$.util.function.InterfaceC2705l
    public final void accept(int i) {
        this.f680a.accept(Integer.valueOf(i));
    }

    @Override // p034j$.util.function.InterfaceC2705l
    /* renamed from: l */
    public InterfaceC2705l mo165l(InterfaceC2705l interfaceC2705l) {
        Objects.requireNonNull(interfaceC2705l);
        return new C2704k(this, interfaceC2705l);
    }
}
