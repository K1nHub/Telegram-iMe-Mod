package p033j$.util;

import java.util.Objects;
import p033j$.util.function.C2825o;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2826p;
/* renamed from: j$.util.o */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2844o implements InterfaceC2826p {

    /* renamed from: a */
    public final /* synthetic */ Consumer f810a;

    @Override // p033j$.util.function.InterfaceC2826p
    public final void accept(long j) {
        this.f810a.accept(Long.valueOf(j));
    }

    @Override // p033j$.util.function.InterfaceC2826p
    /* renamed from: f */
    public InterfaceC2826p mo212f(InterfaceC2826p interfaceC2826p) {
        Objects.requireNonNull(interfaceC2826p);
        return new C2825o(this, interfaceC2826p);
    }
}
