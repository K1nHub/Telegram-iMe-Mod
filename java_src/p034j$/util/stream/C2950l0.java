package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2704k;
import p034j$.util.function.InterfaceC2705l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.l0 */
/* loaded from: classes2.dex */
public final class C2950l0 extends AbstractC2968o0 implements InterfaceC2947k3 {

    /* renamed from: b */
    final InterfaceC2705l f987b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2950l0(InterfaceC2705l interfaceC2705l, boolean z) {
        super(z);
        this.f987b = interfaceC2705l;
    }

    @Override // p034j$.util.stream.AbstractC2968o0, p034j$.util.stream.InterfaceC2959m3
    public void accept(int i) {
        this.f987b.accept(i);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: e */
    public /* synthetic */ void accept(Integer num) {
        AbstractC2969o1.m358b(this, num);
    }

    @Override // p034j$.util.function.InterfaceC2705l
    /* renamed from: l */
    public InterfaceC2705l mo165l(InterfaceC2705l interfaceC2705l) {
        Objects.requireNonNull(interfaceC2705l);
        return new C2704k(this, interfaceC2705l);
    }
}
