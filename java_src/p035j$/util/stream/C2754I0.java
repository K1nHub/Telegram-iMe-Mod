package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.InterfaceC2674l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.I0 */
/* loaded from: classes2.dex */
public class C2754I0 extends AbstractC2772L0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2754I0(InterfaceC2701s interfaceC2701s, int i, boolean z) {
        super(interfaceC2701s, i, z);
    }

    @Override // p035j$.util.stream.AbstractC2864c
    /* renamed from: G0 */
    final boolean mo433G0() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p035j$.util.stream.AbstractC2864c
    /* renamed from: H0 */
    public final InterfaceC2928m3 mo292H0(int i, InterfaceC2928m3 interfaceC2928m3) {
        throw new UnsupportedOperationException();
    }

    @Override // p035j$.util.stream.AbstractC2772L0, p035j$.util.stream.IntStream
    /* renamed from: I */
    public void mo273I(InterfaceC2674l interfaceC2674l) {
        if (!isParallel()) {
            AbstractC2772L0.m506L0(m444J0()).mo134c(interfaceC2674l);
            return;
        }
        Objects.requireNonNull(interfaceC2674l);
        m443x0(new C2919l0(interfaceC2674l, true));
    }

    @Override // p035j$.util.stream.AbstractC2772L0, p035j$.util.stream.IntStream
    /* renamed from: U */
    public void mo269U(InterfaceC2674l interfaceC2674l) {
        if (isParallel()) {
            super.mo269U(interfaceC2674l);
        } else {
            AbstractC2772L0.m506L0(m444J0()).mo134c(interfaceC2674l);
        }
    }

    @Override // p035j$.util.stream.AbstractC2864c, p035j$.util.stream.InterfaceC2888g, p035j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream parallel() {
        parallel();
        return this;
    }

    @Override // p035j$.util.stream.AbstractC2864c, p035j$.util.stream.InterfaceC2888g, p035j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream sequential() {
        sequential();
        return this;
    }
}
