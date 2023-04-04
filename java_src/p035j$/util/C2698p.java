package p035j$.util;

import java.util.Objects;
import p035j$.util.function.C2678p;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2679q;
/* renamed from: j$.util.p */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2698p implements InterfaceC2679q {

    /* renamed from: a */
    public final /* synthetic */ Consumer f683a;

    @Override // p035j$.util.function.InterfaceC2679q
    public final void accept(long j) {
        this.f683a.accept(Long.valueOf(j));
    }

    @Override // p035j$.util.function.InterfaceC2679q
    /* renamed from: f */
    public InterfaceC2679q mo149f(InterfaceC2679q interfaceC2679q) {
        Objects.requireNonNull(interfaceC2679q);
        return new C2678p(this, interfaceC2679q);
    }
}
