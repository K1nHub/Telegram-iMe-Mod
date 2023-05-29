package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2709p;
import p034j$.util.function.InterfaceC2710q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.m0 */
/* loaded from: classes2.dex */
public final class C2956m0 extends AbstractC2968o0 implements InterfaceC2953l3 {

    /* renamed from: b */
    final InterfaceC2710q f995b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2956m0(InterfaceC2710q interfaceC2710q, boolean z) {
        super(z);
        this.f995b = interfaceC2710q;
    }

    @Override // p034j$.util.stream.AbstractC2968o0, p034j$.util.stream.InterfaceC2959m3, p034j$.util.stream.InterfaceC2953l3, p034j$.util.function.InterfaceC2710q
    public void accept(long j) {
        this.f995b.accept(j);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: e */
    public /* synthetic */ void accept(Long l) {
        AbstractC2969o1.m357c(this, l);
    }

    @Override // p034j$.util.function.InterfaceC2710q
    /* renamed from: f */
    public InterfaceC2710q mo140f(InterfaceC2710q interfaceC2710q) {
        Objects.requireNonNull(interfaceC2710q);
        return new C2709p(this, interfaceC2710q);
    }
}
