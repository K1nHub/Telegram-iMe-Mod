package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2602p;
import p034j$.util.function.InterfaceC2603q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.m0 */
/* loaded from: classes2.dex */
public final class C2849m0 extends AbstractC2861o0 implements InterfaceC2846l3 {

    /* renamed from: b */
    final InterfaceC2603q f992b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2849m0(InterfaceC2603q interfaceC2603q, boolean z) {
        super(z);
        this.f992b = interfaceC2603q;
    }

    @Override // p034j$.util.stream.AbstractC2861o0, p034j$.util.stream.InterfaceC2852m3, p034j$.util.stream.InterfaceC2846l3, p034j$.util.function.InterfaceC2603q
    public void accept(long j) {
        this.f992b.accept(j);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: e */
    public /* synthetic */ void accept(Long l) {
        AbstractC2862o1.m371c(this, l);
    }

    @Override // p034j$.util.function.InterfaceC2603q
    /* renamed from: f */
    public InterfaceC2603q mo154f(InterfaceC2603q interfaceC2603q) {
        Objects.requireNonNull(interfaceC2603q);
        return new C2602p(this, interfaceC2603q);
    }
}
