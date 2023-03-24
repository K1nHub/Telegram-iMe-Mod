package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2597k;
import p034j$.util.function.InterfaceC2598l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.l0 */
/* loaded from: classes2.dex */
public final class C2843l0 extends AbstractC2861o0 implements InterfaceC2840k3 {

    /* renamed from: b */
    final InterfaceC2598l f984b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2843l0(InterfaceC2598l interfaceC2598l, boolean z) {
        super(z);
        this.f984b = interfaceC2598l;
    }

    @Override // p034j$.util.stream.AbstractC2861o0, p034j$.util.stream.InterfaceC2852m3
    public void accept(int i) {
        this.f984b.accept(i);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: e */
    public /* synthetic */ void accept(Integer num) {
        AbstractC2862o1.m372b(this, num);
    }

    @Override // p034j$.util.function.InterfaceC2598l
    /* renamed from: l */
    public InterfaceC2598l mo179l(InterfaceC2598l interfaceC2598l) {
        Objects.requireNonNull(interfaceC2598l);
        return new C2597k(this, interfaceC2598l);
    }
}
