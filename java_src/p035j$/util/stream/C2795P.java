package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.InterfaceC2668f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.P */
/* loaded from: classes2.dex */
public class C2795P extends AbstractC2816T {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2795P(InterfaceC2701s interfaceC2701s, int i, boolean z) {
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

    @Override // p035j$.util.stream.AbstractC2816T, p035j$.util.stream.InterfaceC2821U
    /* renamed from: j */
    public void mo205j(InterfaceC2668f interfaceC2668f) {
        if (isParallel()) {
            super.mo205j(interfaceC2668f);
        } else {
            AbstractC2816T.m488L0(m444J0()).mo141e(interfaceC2668f);
        }
    }

    @Override // p035j$.util.stream.AbstractC2816T, p035j$.util.stream.InterfaceC2821U
    /* renamed from: l0 */
    public void mo204l0(InterfaceC2668f interfaceC2668f) {
        if (!isParallel()) {
            AbstractC2816T.m488L0(m444J0()).mo141e(interfaceC2668f);
            return;
        }
        Objects.requireNonNull(interfaceC2668f);
        m443x0(new C2913k0(interfaceC2668f, true));
    }

    @Override // p035j$.util.stream.AbstractC2864c, p035j$.util.stream.InterfaceC2888g, p035j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2821U parallel() {
        parallel();
        return this;
    }

    @Override // p035j$.util.stream.AbstractC2864c, p035j$.util.stream.InterfaceC2888g, p035j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2821U sequential() {
        sequential();
        return this;
    }
}
