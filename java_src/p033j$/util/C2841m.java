package p033j$.util;

import java.util.Objects;
import p033j$.util.function.C2821k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2822l;
/* renamed from: j$.util.m */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2841m implements InterfaceC2822l {

    /* renamed from: a */
    public final /* synthetic */ Consumer f809a;

    @Override // p033j$.util.function.InterfaceC2822l
    public final void accept(int i) {
        this.f809a.accept(Integer.valueOf(i));
    }

    @Override // p033j$.util.function.InterfaceC2822l
    /* renamed from: k */
    public InterfaceC2822l mo234k(InterfaceC2822l interfaceC2822l) {
        Objects.requireNonNull(interfaceC2822l);
        return new C2821k(this, interfaceC2822l);
    }
}
