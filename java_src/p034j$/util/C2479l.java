package p034j$.util;

import java.util.Objects;
import p034j$.util.function.C2453e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2454f;
/* renamed from: j$.util.l */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2479l implements InterfaceC2454f {

    /* renamed from: a */
    public final /* synthetic */ Consumer f670a;

    @Override // p034j$.util.function.InterfaceC2454f
    public final void accept(double d) {
        this.f670a.accept(Double.valueOf(d));
    }

    @Override // p034j$.util.function.InterfaceC2454f
    /* renamed from: j */
    public InterfaceC2454f mo102j(InterfaceC2454f interfaceC2454f) {
        Objects.requireNonNull(interfaceC2454f);
        return new C2453e(this, interfaceC2454f);
    }
}
