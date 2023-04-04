package p035j$.util;

import java.util.Objects;
import p035j$.util.function.C2667e;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2668f;
/* renamed from: j$.util.l */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2693l implements InterfaceC2668f {

    /* renamed from: a */
    public final /* synthetic */ Consumer f681a;

    @Override // p035j$.util.function.InterfaceC2668f
    public final void accept(double d) {
        this.f681a.accept(Double.valueOf(d));
    }

    @Override // p035j$.util.function.InterfaceC2668f
    /* renamed from: j */
    public InterfaceC2668f mo96j(InterfaceC2668f interfaceC2668f) {
        Objects.requireNonNull(interfaceC2668f);
        return new C2667e(this, interfaceC2668f);
    }
}
