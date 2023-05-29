package p034j$.util;

import java.util.Objects;
import p034j$.util.function.C2698e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2699f;
/* renamed from: j$.util.l */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2724l implements InterfaceC2699f {

    /* renamed from: a */
    public final /* synthetic */ Consumer f679a;

    @Override // p034j$.util.function.InterfaceC2699f
    public final void accept(double d) {
        this.f679a.accept(Double.valueOf(d));
    }

    @Override // p034j$.util.function.InterfaceC2699f
    /* renamed from: j */
    public InterfaceC2699f mo87j(InterfaceC2699f interfaceC2699f) {
        Objects.requireNonNull(interfaceC2699f);
        return new C2698e(this, interfaceC2699f);
    }
}
