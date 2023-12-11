package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2826o;
import p033j$.util.function.InterfaceC2827p;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.m0 */
/* loaded from: classes2.dex */
public final class C3070m0 extends AbstractC3082o0 implements InterfaceC3067l3 {

    /* renamed from: b */
    final InterfaceC2827p f1130b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3070m0(InterfaceC2827p interfaceC2827p, boolean z) {
        super(z);
        this.f1130b = interfaceC2827p;
    }

    @Override // p033j$.util.stream.AbstractC3082o0, p033j$.util.stream.InterfaceC3073m3, p033j$.util.stream.InterfaceC3067l3, p033j$.util.function.InterfaceC2827p
    public void accept(long j) {
        this.f1130b.accept(j);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: e */
    public /* synthetic */ void accept(Long l) {
        AbstractC3083o1.m421c(this, l);
    }

    @Override // p033j$.util.function.InterfaceC2827p
    /* renamed from: f */
    public InterfaceC2827p mo213f(InterfaceC2827p interfaceC2827p) {
        Objects.requireNonNull(interfaceC2827p);
        return new C2826o(this, interfaceC2827p);
    }
}
