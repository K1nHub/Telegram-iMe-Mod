package p033j$.util;

import java.util.Objects;
import p033j$.util.function.C2824o;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2825p;
/* renamed from: j$.util.o */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2843o implements InterfaceC2825p {

    /* renamed from: a */
    public final /* synthetic */ Consumer f810a;

    @Override // p033j$.util.function.InterfaceC2825p
    public final void accept(long j) {
        this.f810a.accept(Long.valueOf(j));
    }

    @Override // p033j$.util.function.InterfaceC2825p
    /* renamed from: f */
    public InterfaceC2825p mo216f(InterfaceC2825p interfaceC2825p) {
        Objects.requireNonNull(interfaceC2825p);
        return new C2824o(this, interfaceC2825p);
    }
}
