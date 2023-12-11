package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2816e;
import p033j$.util.function.InterfaceC2817f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.k0 */
/* loaded from: classes2.dex */
public final class C3058k0 extends AbstractC3082o0 implements InterfaceC3055j3 {

    /* renamed from: b */
    final InterfaceC2817f f1112b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3058k0(InterfaceC2817f interfaceC2817f, boolean z) {
        super(z);
        this.f1112b = interfaceC2817f;
    }

    @Override // p033j$.util.stream.AbstractC3082o0, p033j$.util.stream.InterfaceC3073m3
    public void accept(double d) {
        this.f1112b.accept(d);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: e */
    public /* synthetic */ void accept(Double d) {
        AbstractC3083o1.m423a(this, d);
    }

    @Override // p033j$.util.function.InterfaceC2817f
    /* renamed from: j */
    public InterfaceC2817f mo158j(InterfaceC2817f interfaceC2817f) {
        Objects.requireNonNull(interfaceC2817f);
        return new C2816e(this, interfaceC2817f);
    }
}
