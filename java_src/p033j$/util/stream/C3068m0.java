package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2824o;
import p033j$.util.function.InterfaceC2825p;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.m0 */
/* loaded from: classes2.dex */
public final class C3068m0 extends AbstractC3080o0 implements InterfaceC3065l3 {

    /* renamed from: b */
    final InterfaceC2825p f1130b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3068m0(InterfaceC2825p interfaceC2825p, boolean z) {
        super(z);
        this.f1130b = interfaceC2825p;
    }

    @Override // p033j$.util.stream.AbstractC3080o0, p033j$.util.stream.InterfaceC3071m3, p033j$.util.stream.InterfaceC3065l3, p033j$.util.function.InterfaceC2825p
    public void accept(long j) {
        this.f1130b.accept(j);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: e */
    public /* synthetic */ void accept(Long l) {
        AbstractC3081o1.m424c(this, l);
    }

    @Override // p033j$.util.function.InterfaceC2825p
    /* renamed from: f */
    public InterfaceC2825p mo216f(InterfaceC2825p interfaceC2825p) {
        Objects.requireNonNull(interfaceC2825p);
        return new C2824o(this, interfaceC2825p);
    }
}
