package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2814e;
import p033j$.util.function.InterfaceC2815f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.k0 */
/* loaded from: classes2.dex */
public final class C3056k0 extends AbstractC3080o0 implements InterfaceC3053j3 {

    /* renamed from: b */
    final InterfaceC2815f f1112b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3056k0(InterfaceC2815f interfaceC2815f, boolean z) {
        super(z);
        this.f1112b = interfaceC2815f;
    }

    @Override // p033j$.util.stream.AbstractC3080o0, p033j$.util.stream.InterfaceC3071m3
    public void accept(double d) {
        this.f1112b.accept(d);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: e */
    public /* synthetic */ void accept(Double d) {
        AbstractC3081o1.m426a(this, d);
    }

    @Override // p033j$.util.function.InterfaceC2815f
    /* renamed from: j */
    public InterfaceC2815f mo161j(InterfaceC2815f interfaceC2815f) {
        Objects.requireNonNull(interfaceC2815f);
        return new C2814e(this, interfaceC2815f);
    }
}
