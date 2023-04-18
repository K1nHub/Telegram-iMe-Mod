package p034j$.util;

import java.util.Objects;
import p034j$.util.function.C2665p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2666q;
/* renamed from: j$.util.p */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2685p implements InterfaceC2666q {

    /* renamed from: a */
    public final /* synthetic */ Consumer f678a;

    @Override // p034j$.util.function.InterfaceC2666q
    public final void accept(long j) {
        this.f678a.accept(Long.valueOf(j));
    }

    @Override // p034j$.util.function.InterfaceC2666q
    /* renamed from: f */
    public InterfaceC2666q mo135f(InterfaceC2666q interfaceC2666q) {
        Objects.requireNonNull(interfaceC2666q);
        return new C2665p(this, interfaceC2666q);
    }
}
