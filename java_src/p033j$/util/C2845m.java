package p033j$.util;

import java.util.Objects;
import p033j$.util.function.C2825k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2826l;
/* renamed from: j$.util.m */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2845m implements InterfaceC2826l {

    /* renamed from: a */
    public final /* synthetic */ Consumer f809a;

    @Override // p033j$.util.function.InterfaceC2826l
    public final void accept(int i) {
        this.f809a.accept(Integer.valueOf(i));
    }

    @Override // p033j$.util.function.InterfaceC2826l
    /* renamed from: k */
    public InterfaceC2826l mo235k(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        return new C2825k(this, interfaceC2826l);
    }
}
