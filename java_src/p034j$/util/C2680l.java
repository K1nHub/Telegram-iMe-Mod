package p034j$.util;

import java.util.Objects;
import p034j$.util.function.C2654e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2655f;
/* renamed from: j$.util.l */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2680l implements InterfaceC2655f {

    /* renamed from: a */
    public final /* synthetic */ Consumer f676a;

    @Override // p034j$.util.function.InterfaceC2655f
    public final void accept(double d) {
        this.f676a.accept(Double.valueOf(d));
    }

    @Override // p034j$.util.function.InterfaceC2655f
    /* renamed from: j */
    public InterfaceC2655f mo82j(InterfaceC2655f interfaceC2655f) {
        Objects.requireNonNull(interfaceC2655f);
        return new C2654e(this, interfaceC2655f);
    }
}
