package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.InterfaceC2679q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.a1 */
/* loaded from: classes2.dex */
public class C2854a1 extends AbstractC2872d1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2854a1(InterfaceC2701s interfaceC2701s, int i, boolean z) {
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

    @Override // p035j$.util.stream.AbstractC2872d1, p035j$.util.stream.InterfaceC2878e1
    /* renamed from: Z */
    public void mo190Z(InterfaceC2679q interfaceC2679q) {
        if (!isParallel()) {
            AbstractC2872d1.m436L0(m444J0()).mo128d(interfaceC2679q);
            return;
        }
        Objects.requireNonNull(interfaceC2679q);
        m443x0(new C2925m0(interfaceC2679q, true));
    }

    @Override // p035j$.util.stream.AbstractC2872d1, p035j$.util.stream.InterfaceC2878e1
    /* renamed from: d */
    public void mo189d(InterfaceC2679q interfaceC2679q) {
        if (isParallel()) {
            super.mo189d(interfaceC2679q);
        } else {
            AbstractC2872d1.m436L0(m444J0()).mo128d(interfaceC2679q);
        }
    }

    @Override // p035j$.util.stream.AbstractC2864c, p035j$.util.stream.InterfaceC2888g, p035j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2878e1 parallel() {
        parallel();
        return this;
    }

    @Override // p035j$.util.stream.AbstractC2864c, p035j$.util.stream.InterfaceC2888g, p035j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2878e1 sequential() {
        sequential();
        return this;
    }
}
