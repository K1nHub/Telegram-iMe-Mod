package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2825k;
import p033j$.util.function.InterfaceC2826l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.l0 */
/* loaded from: classes2.dex */
public final class C3067l0 extends AbstractC3085o0 implements InterfaceC3064k3 {

    /* renamed from: b */
    final InterfaceC2826l f1122b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3067l0(InterfaceC2826l interfaceC2826l, boolean z) {
        super(z);
        this.f1122b = interfaceC2826l;
    }

    @Override // p033j$.util.stream.AbstractC3085o0, p033j$.util.stream.InterfaceC3076m3
    public void accept(int i) {
        this.f1122b.accept(i);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: e */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3086o1.m422b(this, num);
    }

    @Override // p033j$.util.function.InterfaceC2826l
    /* renamed from: k */
    public InterfaceC2826l mo235k(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        return new C2825k(this, interfaceC2826l);
    }
}
