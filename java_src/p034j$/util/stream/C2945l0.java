package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2699k;
import p034j$.util.function.InterfaceC2700l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.l0 */
/* loaded from: classes2.dex */
public final class C2945l0 extends AbstractC2963o0 implements InterfaceC2942k3 {

    /* renamed from: b */
    final InterfaceC2700l f987b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2945l0(InterfaceC2700l interfaceC2700l, boolean z) {
        super(z);
        this.f987b = interfaceC2700l;
    }

    @Override // p034j$.util.stream.AbstractC2963o0, p034j$.util.stream.InterfaceC2954m3
    public void accept(int i) {
        this.f987b.accept(i);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: e */
    public /* synthetic */ void accept(Integer num) {
        AbstractC2964o1.m358b(this, num);
    }

    @Override // p034j$.util.function.InterfaceC2700l
    /* renamed from: l */
    public InterfaceC2700l mo165l(InterfaceC2700l interfaceC2700l) {
        Objects.requireNonNull(interfaceC2700l);
        return new C2699k(this, interfaceC2700l);
    }
}
