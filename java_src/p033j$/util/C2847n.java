package p033j$.util;

import java.util.Objects;
import p033j$.util.function.C2825k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2826l;
/* renamed from: j$.util.n */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2847n implements InterfaceC2826l {

    /* renamed from: a */
    public final /* synthetic */ Consumer f762a;

    @Override // p033j$.util.function.InterfaceC2826l
    public final void accept(int i) {
        this.f762a.accept(Integer.valueOf(i));
    }

    @Override // p033j$.util.function.InterfaceC2826l
    /* renamed from: l */
    public InterfaceC2826l mo165l(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        return new C2825k(this, interfaceC2826l);
    }
}
