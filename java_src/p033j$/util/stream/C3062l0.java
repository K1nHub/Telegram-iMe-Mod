package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2820k;
import p033j$.util.function.InterfaceC2821l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.l0 */
/* loaded from: classes2.dex */
public final class C3062l0 extends AbstractC3080o0 implements InterfaceC3059k3 {

    /* renamed from: b */
    final InterfaceC2821l f1122b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3062l0(InterfaceC2821l interfaceC2821l, boolean z) {
        super(z);
        this.f1122b = interfaceC2821l;
    }

    @Override // p033j$.util.stream.AbstractC3080o0, p033j$.util.stream.InterfaceC3071m3
    public void accept(int i) {
        this.f1122b.accept(i);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: e */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3081o1.m425b(this, num);
    }

    @Override // p033j$.util.function.InterfaceC2821l
    /* renamed from: k */
    public InterfaceC2821l mo238k(InterfaceC2821l interfaceC2821l) {
        Objects.requireNonNull(interfaceC2821l);
        return new C2820k(this, interfaceC2821l);
    }
}
