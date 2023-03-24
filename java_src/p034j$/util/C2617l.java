package p034j$.util;

import java.util.Objects;
import p034j$.util.function.C2591e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2592f;
/* renamed from: j$.util.l */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2617l implements InterfaceC2592f {

    /* renamed from: a */
    public final /* synthetic */ Consumer f676a;

    @Override // p034j$.util.function.InterfaceC2592f
    public final void accept(double d) {
        this.f676a.accept(Double.valueOf(d));
    }

    @Override // p034j$.util.function.InterfaceC2592f
    /* renamed from: j */
    public InterfaceC2592f mo101j(InterfaceC2592f interfaceC2592f) {
        Objects.requireNonNull(interfaceC2592f);
        return new C2591e(this, interfaceC2592f);
    }
}
