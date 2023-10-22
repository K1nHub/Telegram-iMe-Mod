package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2821k;
import p033j$.util.function.InterfaceC2822l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.l0 */
/* loaded from: classes2.dex */
public final class C3063l0 extends AbstractC3081o0 implements InterfaceC3060k3 {

    /* renamed from: b */
    final InterfaceC2822l f1122b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3063l0(InterfaceC2822l interfaceC2822l, boolean z) {
        super(z);
        this.f1122b = interfaceC2822l;
    }

    @Override // p033j$.util.stream.AbstractC3081o0, p033j$.util.stream.InterfaceC3072m3
    public void accept(int i) {
        this.f1122b.accept(i);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: e */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3082o1.m421b(this, num);
    }

    @Override // p033j$.util.function.InterfaceC2822l
    /* renamed from: k */
    public InterfaceC2822l mo234k(InterfaceC2822l interfaceC2822l) {
        Objects.requireNonNull(interfaceC2822l);
        return new C2821k(this, interfaceC2822l);
    }
}
