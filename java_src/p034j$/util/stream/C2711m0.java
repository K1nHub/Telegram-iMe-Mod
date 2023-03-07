package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2464p;
import p034j$.util.function.InterfaceC2465q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.m0 */
/* loaded from: classes2.dex */
public final class C2711m0 extends AbstractC2723o0 implements InterfaceC2708l3 {

    /* renamed from: b */
    final InterfaceC2465q f986b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2711m0(InterfaceC2465q interfaceC2465q, boolean z) {
        super(z);
        this.f986b = interfaceC2465q;
    }

    @Override // p034j$.util.stream.AbstractC2723o0, p034j$.util.stream.InterfaceC2714m3, p034j$.util.stream.InterfaceC2708l3, p034j$.util.function.InterfaceC2465q
    public void accept(long j) {
        this.f986b.accept(j);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: e */
    public /* synthetic */ void accept(Long l) {
        AbstractC2724o1.m372c(this, l);
    }

    @Override // p034j$.util.function.InterfaceC2465q
    /* renamed from: f */
    public InterfaceC2465q mo155f(InterfaceC2465q interfaceC2465q) {
        Objects.requireNonNull(interfaceC2465q);
        return new C2464p(this, interfaceC2465q);
    }
}
