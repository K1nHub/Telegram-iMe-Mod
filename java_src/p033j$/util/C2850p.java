package p033j$.util;

import java.util.Objects;
import p033j$.util.function.C2830p;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2831q;
/* renamed from: j$.util.p */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2850p implements InterfaceC2831q {

    /* renamed from: a */
    public final /* synthetic */ Consumer f763a;

    @Override // p033j$.util.function.InterfaceC2831q
    public final void accept(long j) {
        this.f763a.accept(Long.valueOf(j));
    }

    @Override // p033j$.util.function.InterfaceC2831q
    /* renamed from: f */
    public InterfaceC2831q mo140f(InterfaceC2831q interfaceC2831q) {
        Objects.requireNonNull(interfaceC2831q);
        return new C2830p(this, interfaceC2831q);
    }
}
