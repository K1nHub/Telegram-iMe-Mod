package p034j$.util;

import java.util.Objects;
import p034j$.util.function.C2588p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2589q;
/* renamed from: j$.util.p */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2608p implements InterfaceC2589q {

    /* renamed from: a */
    public final /* synthetic */ Consumer f677a;

    @Override // p034j$.util.function.InterfaceC2589q
    public final void accept(long j) {
        this.f677a.accept(Long.valueOf(j));
    }

    @Override // p034j$.util.function.InterfaceC2589q
    /* renamed from: f */
    public InterfaceC2589q mo155f(InterfaceC2589q interfaceC2589q) {
        Objects.requireNonNull(interfaceC2589q);
        return new C2588p(this, interfaceC2589q);
    }
}
