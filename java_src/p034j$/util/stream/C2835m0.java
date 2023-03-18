package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2588p;
import p034j$.util.function.InterfaceC2589q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.m0 */
/* loaded from: classes2.dex */
public final class C2835m0 extends AbstractC2847o0 implements InterfaceC2832l3 {

    /* renamed from: b */
    final InterfaceC2589q f991b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2835m0(InterfaceC2589q interfaceC2589q, boolean z) {
        super(z);
        this.f991b = interfaceC2589q;
    }

    @Override // p034j$.util.stream.AbstractC2847o0, p034j$.util.stream.InterfaceC2838m3, p034j$.util.stream.InterfaceC2832l3, p034j$.util.function.InterfaceC2589q
    public void accept(long j) {
        this.f991b.accept(j);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: e */
    public /* synthetic */ void accept(Long l) {
        AbstractC2848o1.m372c(this, l);
    }

    @Override // p034j$.util.function.InterfaceC2589q
    /* renamed from: f */
    public InterfaceC2589q mo155f(InterfaceC2589q interfaceC2589q) {
        Objects.requireNonNull(interfaceC2589q);
        return new C2588p(this, interfaceC2589q);
    }
}
