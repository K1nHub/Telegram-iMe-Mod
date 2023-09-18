package p033j$.util;

import java.util.Objects;
import p033j$.util.function.C2874e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2875f;
/* renamed from: j$.util.l */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2900l implements InterfaceC2875f {

    /* renamed from: a */
    public final /* synthetic */ Consumer f765a;

    @Override // p033j$.util.function.InterfaceC2875f
    public final void accept(double d) {
        this.f765a.accept(Double.valueOf(d));
    }

    @Override // p033j$.util.function.InterfaceC2875f
    /* renamed from: j */
    public InterfaceC2875f mo105j(InterfaceC2875f interfaceC2875f) {
        Objects.requireNonNull(interfaceC2875f);
        return new C2874e(this, interfaceC2875f);
    }
}
