package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2880k;
import p033j$.util.function.InterfaceC2881l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.l0 */
/* loaded from: classes2.dex */
public final class C3126l0 extends AbstractC3144o0 implements InterfaceC3123k3 {

    /* renamed from: b */
    final InterfaceC2881l f1073b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3126l0(InterfaceC2881l interfaceC2881l, boolean z) {
        super(z);
        this.f1073b = interfaceC2881l;
    }

    @Override // p033j$.util.stream.AbstractC3144o0, p033j$.util.stream.InterfaceC3135m3
    public void accept(int i) {
        this.f1073b.accept(i);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: e */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3145o1.m376b(this, num);
    }

    @Override // p033j$.util.function.InterfaceC2881l
    /* renamed from: l */
    public InterfaceC2881l mo183l(InterfaceC2881l interfaceC2881l) {
        Objects.requireNonNull(interfaceC2881l);
        return new C2880k(this, interfaceC2881l);
    }
}
