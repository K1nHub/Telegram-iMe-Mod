package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.function.C2667e;
import p035j$.util.function.InterfaceC2668f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.k0 */
/* loaded from: classes2.dex */
public final class C2913k0 extends AbstractC2937o0 implements InterfaceC2910j3 {

    /* renamed from: b */
    final InterfaceC2668f f979b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2913k0(InterfaceC2668f interfaceC2668f, boolean z) {
        super(z);
        this.f979b = interfaceC2668f;
    }

    @Override // p035j$.util.stream.AbstractC2937o0, p035j$.util.stream.InterfaceC2928m3
    public void accept(double d) {
        this.f979b.accept(d);
    }

    @Override // p035j$.util.function.Consumer
    /* renamed from: e */
    public /* synthetic */ void accept(Double d) {
        AbstractC2938o1.m368a(this, d);
    }

    @Override // p035j$.util.function.InterfaceC2668f
    /* renamed from: j */
    public InterfaceC2668f mo96j(InterfaceC2668f interfaceC2668f) {
        Objects.requireNonNull(interfaceC2668f);
        return new C2667e(this, interfaceC2668f);
    }
}
