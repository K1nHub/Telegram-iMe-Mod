package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2698e;
import p034j$.util.function.InterfaceC2699f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.k0 */
/* loaded from: classes2.dex */
public final class C2944k0 extends AbstractC2968o0 implements InterfaceC2941j3 {

    /* renamed from: b */
    final InterfaceC2699f f977b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2944k0(InterfaceC2699f interfaceC2699f, boolean z) {
        super(z);
        this.f977b = interfaceC2699f;
    }

    @Override // p034j$.util.stream.AbstractC2968o0, p034j$.util.stream.InterfaceC2959m3
    public void accept(double d) {
        this.f977b.accept(d);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: e */
    public /* synthetic */ void accept(Double d) {
        AbstractC2969o1.m359a(this, d);
    }

    @Override // p034j$.util.function.InterfaceC2699f
    /* renamed from: j */
    public InterfaceC2699f mo87j(InterfaceC2699f interfaceC2699f) {
        Objects.requireNonNull(interfaceC2699f);
        return new C2698e(this, interfaceC2699f);
    }
}
