package p034j$.util;

import java.util.Objects;
import p034j$.util.function.C2704p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2705q;
/* renamed from: j$.util.p */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2724p implements InterfaceC2705q {

    /* renamed from: a */
    public final /* synthetic */ Consumer f681a;

    public /* synthetic */ C2724p(Consumer consumer) {
        this.f681a = consumer;
    }

    @Override // p034j$.util.function.InterfaceC2705q
    public final void accept(long j) {
        this.f681a.accept(Long.valueOf(j));
    }

    @Override // p034j$.util.function.InterfaceC2705q
    /* renamed from: f */
    public InterfaceC2705q mo140f(InterfaceC2705q interfaceC2705q) {
        Objects.requireNonNull(interfaceC2705q);
        return new C2704p(this, interfaceC2705q);
    }
}
