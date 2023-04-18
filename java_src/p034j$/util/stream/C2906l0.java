package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2660k;
import p034j$.util.function.InterfaceC2661l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.l0 */
/* loaded from: classes2.dex */
public final class C2906l0 extends AbstractC2924o0 implements InterfaceC2903k3 {

    /* renamed from: b */
    final InterfaceC2661l f984b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2906l0(InterfaceC2661l interfaceC2661l, boolean z) {
        super(z);
        this.f984b = interfaceC2661l;
    }

    @Override // p034j$.util.stream.AbstractC2924o0, p034j$.util.stream.InterfaceC2915m3
    public void accept(int i) {
        this.f984b.accept(i);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: e */
    public /* synthetic */ void accept(Integer num) {
        AbstractC2925o1.m353b(this, num);
    }

    @Override // p034j$.util.function.InterfaceC2661l
    /* renamed from: l */
    public InterfaceC2661l mo160l(InterfaceC2661l interfaceC2661l) {
        Objects.requireNonNull(interfaceC2661l);
        return new C2660k(this, interfaceC2661l);
    }
}
