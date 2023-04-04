package p035j$.util;

import java.util.Objects;
import p035j$.util.function.C2673k;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2674l;
/* renamed from: j$.util.n */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2695n implements InterfaceC2674l {

    /* renamed from: a */
    public final /* synthetic */ Consumer f682a;

    @Override // p035j$.util.function.InterfaceC2674l
    public final void accept(int i) {
        this.f682a.accept(Integer.valueOf(i));
    }

    @Override // p035j$.util.function.InterfaceC2674l
    /* renamed from: l */
    public InterfaceC2674l mo174l(InterfaceC2674l interfaceC2674l) {
        Objects.requireNonNull(interfaceC2674l);
        return new C2673k(this, interfaceC2674l);
    }
}
