package p034j$.util;

import java.util.Objects;
import p034j$.util.function.C2602p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2603q;
/* renamed from: j$.util.p */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2622p implements InterfaceC2603q {

    /* renamed from: a */
    public final /* synthetic */ Consumer f678a;

    @Override // p034j$.util.function.InterfaceC2603q
    public final void accept(long j) {
        this.f678a.accept(Long.valueOf(j));
    }

    @Override // p034j$.util.function.InterfaceC2603q
    /* renamed from: f */
    public InterfaceC2603q mo154f(InterfaceC2603q interfaceC2603q) {
        Objects.requireNonNull(interfaceC2603q);
        return new C2602p(this, interfaceC2603q);
    }
}
