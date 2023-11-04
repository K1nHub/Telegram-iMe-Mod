package p033j$.util;

import java.util.Objects;
import p033j$.util.function.C2829o;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2830p;
/* renamed from: j$.util.o */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2848o implements InterfaceC2830p {

    /* renamed from: a */
    public final /* synthetic */ Consumer f810a;

    @Override // p033j$.util.function.InterfaceC2830p
    public final void accept(long j) {
        this.f810a.accept(Long.valueOf(j));
    }

    @Override // p033j$.util.function.InterfaceC2830p
    /* renamed from: f */
    public InterfaceC2830p mo213f(InterfaceC2830p interfaceC2830p) {
        Objects.requireNonNull(interfaceC2830p);
        return new C2829o(this, interfaceC2830p);
    }
}
