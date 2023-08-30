package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2969p;
import p033j$.util.function.InterfaceC2970q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.m0 */
/* loaded from: classes2.dex */
public final class C3216m0 extends AbstractC3228o0 implements InterfaceC3213l3 {

    /* renamed from: b */
    final InterfaceC2970q f1090b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3216m0(InterfaceC2970q interfaceC2970q, boolean z) {
        super(z);
        this.f1090b = interfaceC2970q;
    }

    @Override // p033j$.util.stream.AbstractC3228o0, p033j$.util.stream.InterfaceC3219m3, p033j$.util.stream.InterfaceC3213l3, p033j$.util.function.InterfaceC2970q
    public void accept(long j) {
        this.f1090b.accept(j);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: e */
    public /* synthetic */ void accept(Long l) {
        AbstractC3229o1.m375c(this, l);
    }

    @Override // p033j$.util.function.InterfaceC2970q
    /* renamed from: f */
    public InterfaceC2970q mo158f(InterfaceC2970q interfaceC2970q) {
        Objects.requireNonNull(interfaceC2970q);
        return new C2969p(this, interfaceC2970q);
    }
}
