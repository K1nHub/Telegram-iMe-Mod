package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2822k;
import p033j$.util.function.InterfaceC2823l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.l0 */
/* loaded from: classes2.dex */
public final class C3064l0 extends AbstractC3082o0 implements InterfaceC3061k3 {

    /* renamed from: b */
    final InterfaceC2823l f1122b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3064l0(InterfaceC2823l interfaceC2823l, boolean z) {
        super(z);
        this.f1122b = interfaceC2823l;
    }

    @Override // p033j$.util.stream.AbstractC3082o0, p033j$.util.stream.InterfaceC3073m3
    public void accept(int i) {
        this.f1122b.accept(i);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: e */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3083o1.m422b(this, num);
    }

    @Override // p033j$.util.function.InterfaceC2823l
    /* renamed from: k */
    public InterfaceC2823l mo235k(InterfaceC2823l interfaceC2823l) {
        Objects.requireNonNull(interfaceC2823l);
        return new C2822k(this, interfaceC2823l);
    }
}
