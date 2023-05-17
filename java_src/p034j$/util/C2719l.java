package p034j$.util;

import java.util.Objects;
import p034j$.util.function.C2693e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2694f;
/* renamed from: j$.util.l */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2719l implements InterfaceC2694f {

    /* renamed from: a */
    public final /* synthetic */ Consumer f679a;

    @Override // p034j$.util.function.InterfaceC2694f
    public final void accept(double d) {
        this.f679a.accept(Double.valueOf(d));
    }

    @Override // p034j$.util.function.InterfaceC2694f
    /* renamed from: j */
    public InterfaceC2694f mo87j(InterfaceC2694f interfaceC2694f) {
        Objects.requireNonNull(interfaceC2694f);
        return new C2693e(this, interfaceC2694f);
    }
}
