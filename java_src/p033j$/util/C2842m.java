package p033j$.util;

import java.util.Objects;
import p033j$.util.function.C2822k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2823l;
/* renamed from: j$.util.m */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2842m implements InterfaceC2823l {

    /* renamed from: a */
    public final /* synthetic */ Consumer f809a;

    @Override // p033j$.util.function.InterfaceC2823l
    public final void accept(int i) {
        this.f809a.accept(Integer.valueOf(i));
    }

    @Override // p033j$.util.function.InterfaceC2823l
    /* renamed from: k */
    public InterfaceC2823l mo235k(InterfaceC2823l interfaceC2823l) {
        Objects.requireNonNull(interfaceC2823l);
        return new C2822k(this, interfaceC2823l);
    }
}
