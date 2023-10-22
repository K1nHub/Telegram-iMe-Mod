package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2825o;
import p033j$.util.function.InterfaceC2826p;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.m0 */
/* loaded from: classes2.dex */
public final class C3069m0 extends AbstractC3081o0 implements InterfaceC3066l3 {

    /* renamed from: b */
    final InterfaceC2826p f1130b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3069m0(InterfaceC2826p interfaceC2826p, boolean z) {
        super(z);
        this.f1130b = interfaceC2826p;
    }

    @Override // p033j$.util.stream.AbstractC3081o0, p033j$.util.stream.InterfaceC3072m3, p033j$.util.stream.InterfaceC3066l3, p033j$.util.function.InterfaceC2826p
    public void accept(long j) {
        this.f1130b.accept(j);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: e */
    public /* synthetic */ void accept(Long l) {
        AbstractC3082o1.m420c(this, l);
    }

    @Override // p033j$.util.function.InterfaceC2826p
    /* renamed from: f */
    public InterfaceC2826p mo212f(InterfaceC2826p interfaceC2826p) {
        Objects.requireNonNull(interfaceC2826p);
        return new C2825o(this, interfaceC2826p);
    }
}
