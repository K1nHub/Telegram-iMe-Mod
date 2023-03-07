package p034j$.util;

import java.util.Objects;
import p034j$.util.function.C2464p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2465q;
/* renamed from: j$.util.p */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2484p implements InterfaceC2465q {

    /* renamed from: a */
    public final /* synthetic */ Consumer f672a;

    @Override // p034j$.util.function.InterfaceC2465q
    public final void accept(long j) {
        this.f672a.accept(Long.valueOf(j));
    }

    @Override // p034j$.util.function.InterfaceC2465q
    /* renamed from: f */
    public InterfaceC2465q mo155f(InterfaceC2465q interfaceC2465q) {
        Objects.requireNonNull(interfaceC2465q);
        return new C2464p(this, interfaceC2465q);
    }
}
