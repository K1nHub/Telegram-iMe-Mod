package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.function.C2673k;
import p035j$.util.function.InterfaceC2674l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.l0 */
/* loaded from: classes2.dex */
public final class C2919l0 extends AbstractC2937o0 implements InterfaceC2916k3 {

    /* renamed from: b */
    final InterfaceC2674l f989b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2919l0(InterfaceC2674l interfaceC2674l, boolean z) {
        super(z);
        this.f989b = interfaceC2674l;
    }

    @Override // p035j$.util.stream.AbstractC2937o0, p035j$.util.stream.InterfaceC2928m3
    public void accept(int i) {
        this.f989b.accept(i);
    }

    @Override // p035j$.util.function.Consumer
    /* renamed from: e */
    public /* synthetic */ void accept(Integer num) {
        AbstractC2938o1.m367b(this, num);
    }

    @Override // p035j$.util.function.InterfaceC2674l
    /* renamed from: l */
    public InterfaceC2674l mo174l(InterfaceC2674l interfaceC2674l) {
        Objects.requireNonNull(interfaceC2674l);
        return new C2673k(this, interfaceC2674l);
    }
}
