package p033j$.util;

import java.util.Objects;
import p033j$.util.function.C2880k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2881l;
/* renamed from: j$.util.n */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2902n implements InterfaceC2881l {

    /* renamed from: a */
    public final /* synthetic */ Consumer f766a;

    @Override // p033j$.util.function.InterfaceC2881l
    public final void accept(int i) {
        this.f766a.accept(Integer.valueOf(i));
    }

    @Override // p033j$.util.function.InterfaceC2881l
    /* renamed from: l */
    public InterfaceC2881l mo183l(InterfaceC2881l interfaceC2881l) {
        Objects.requireNonNull(interfaceC2881l);
        return new C2880k(this, interfaceC2881l);
    }
}
