package p033j$.util;

import java.util.Objects;
import p033j$.util.function.C2820k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2821l;
/* renamed from: j$.util.m */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2840m implements InterfaceC2821l {

    /* renamed from: a */
    public final /* synthetic */ Consumer f809a;

    @Override // p033j$.util.function.InterfaceC2821l
    public final void accept(int i) {
        this.f809a.accept(Integer.valueOf(i));
    }

    @Override // p033j$.util.function.InterfaceC2821l
    /* renamed from: k */
    public InterfaceC2821l mo238k(InterfaceC2821l interfaceC2821l) {
        Objects.requireNonNull(interfaceC2821l);
        return new C2820k(this, interfaceC2821l);
    }
}
