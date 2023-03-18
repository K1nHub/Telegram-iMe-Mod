package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2583k;
import p034j$.util.function.InterfaceC2584l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.l0 */
/* loaded from: classes2.dex */
public final class C2829l0 extends AbstractC2847o0 implements InterfaceC2826k3 {

    /* renamed from: b */
    final InterfaceC2584l f983b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2829l0(InterfaceC2584l interfaceC2584l, boolean z) {
        super(z);
        this.f983b = interfaceC2584l;
    }

    @Override // p034j$.util.stream.AbstractC2847o0, p034j$.util.stream.InterfaceC2838m3
    public void accept(int i) {
        this.f983b.accept(i);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: e */
    public /* synthetic */ void accept(Integer num) {
        AbstractC2848o1.m373b(this, num);
    }

    @Override // p034j$.util.function.InterfaceC2584l
    /* renamed from: l */
    public InterfaceC2584l mo180l(InterfaceC2584l interfaceC2584l) {
        Objects.requireNonNull(interfaceC2584l);
        return new C2583k(this, interfaceC2584l);
    }
}
