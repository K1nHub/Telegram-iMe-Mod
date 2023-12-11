package p033j$.util;

import java.util.Objects;
import p033j$.util.function.C2826o;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2827p;
/* renamed from: j$.util.o */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2845o implements InterfaceC2827p {

    /* renamed from: a */
    public final /* synthetic */ Consumer f810a;

    @Override // p033j$.util.function.InterfaceC2827p
    public final void accept(long j) {
        this.f810a.accept(Long.valueOf(j));
    }

    @Override // p033j$.util.function.InterfaceC2827p
    /* renamed from: f */
    public InterfaceC2827p mo213f(InterfaceC2827p interfaceC2827p) {
        Objects.requireNonNull(interfaceC2827p);
        return new C2826o(this, interfaceC2827p);
    }
}
