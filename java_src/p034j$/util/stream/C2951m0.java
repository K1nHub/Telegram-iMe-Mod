package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2704p;
import p034j$.util.function.InterfaceC2705q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.m0 */
/* loaded from: classes2.dex */
public final class C2951m0 extends AbstractC2963o0 implements InterfaceC2948l3 {

    /* renamed from: b */
    final InterfaceC2705q f995b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2951m0(InterfaceC2705q interfaceC2705q, boolean z) {
        super(z);
        this.f995b = interfaceC2705q;
    }

    @Override // p034j$.util.stream.AbstractC2963o0, p034j$.util.stream.InterfaceC2954m3, p034j$.util.stream.InterfaceC2948l3, p034j$.util.function.InterfaceC2705q
    public void accept(long j) {
        this.f995b.accept(j);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: e */
    public /* synthetic */ void accept(Long l) {
        AbstractC2964o1.m357c(this, l);
    }

    @Override // p034j$.util.function.InterfaceC2705q
    /* renamed from: f */
    public InterfaceC2705q mo140f(InterfaceC2705q interfaceC2705q) {
        Objects.requireNonNull(interfaceC2705q);
        return new C2704p(this, interfaceC2705q);
    }
}
