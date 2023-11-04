package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2829o;
import p033j$.util.function.InterfaceC2830p;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.m0 */
/* loaded from: classes2.dex */
public final class C3073m0 extends AbstractC3085o0 implements InterfaceC3070l3 {

    /* renamed from: b */
    final InterfaceC2830p f1130b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3073m0(InterfaceC2830p interfaceC2830p, boolean z) {
        super(z);
        this.f1130b = interfaceC2830p;
    }

    @Override // p033j$.util.stream.AbstractC3085o0, p033j$.util.stream.InterfaceC3076m3, p033j$.util.stream.InterfaceC3070l3, p033j$.util.function.InterfaceC2830p
    public void accept(long j) {
        this.f1130b.accept(j);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: e */
    public /* synthetic */ void accept(Long l) {
        AbstractC3086o1.m421c(this, l);
    }

    @Override // p033j$.util.function.InterfaceC2830p
    /* renamed from: f */
    public InterfaceC2830p mo213f(InterfaceC2830p interfaceC2830p) {
        Objects.requireNonNull(interfaceC2830p);
        return new C2829o(this, interfaceC2830p);
    }
}
