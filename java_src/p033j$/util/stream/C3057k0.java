package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2815e;
import p033j$.util.function.InterfaceC2816f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.k0 */
/* loaded from: classes2.dex */
public final class C3057k0 extends AbstractC3081o0 implements InterfaceC3054j3 {

    /* renamed from: b */
    final InterfaceC2816f f1112b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3057k0(InterfaceC2816f interfaceC2816f, boolean z) {
        super(z);
        this.f1112b = interfaceC2816f;
    }

    @Override // p033j$.util.stream.AbstractC3081o0, p033j$.util.stream.InterfaceC3072m3
    public void accept(double d) {
        this.f1112b.accept(d);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: e */
    public /* synthetic */ void accept(Double d) {
        AbstractC3082o1.m422a(this, d);
    }

    @Override // p033j$.util.function.InterfaceC2816f
    /* renamed from: j */
    public InterfaceC2816f mo156j(InterfaceC2816f interfaceC2816f) {
        Objects.requireNonNull(interfaceC2816f);
        return new C2815e(this, interfaceC2816f);
    }
}
