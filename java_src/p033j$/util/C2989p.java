package p033j$.util;

import java.util.Objects;
import p033j$.util.function.C2969p;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2970q;
/* renamed from: j$.util.p */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2989p implements InterfaceC2970q {

    /* renamed from: a */
    public final /* synthetic */ Consumer f776a;

    @Override // p033j$.util.function.InterfaceC2970q
    public final void accept(long j) {
        this.f776a.accept(Long.valueOf(j));
    }

    @Override // p033j$.util.function.InterfaceC2970q
    /* renamed from: f */
    public InterfaceC2970q mo158f(InterfaceC2970q interfaceC2970q) {
        Objects.requireNonNull(interfaceC2970q);
        return new C2969p(this, interfaceC2970q);
    }
}
