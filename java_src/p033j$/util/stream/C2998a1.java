package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.InterfaceC2826p;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.a1 */
/* loaded from: classes2.dex */
public class C2998a1 extends AbstractC3016d1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2998a1(Spliterator spliterator, int i, boolean z) {
        super(spliterator, i, z);
    }

    @Override // p033j$.util.stream.AbstractC3008c
    /* renamed from: F0 */
    final boolean mo487F0() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3008c
    /* renamed from: G0 */
    public final InterfaceC3072m3 mo346G0(int i, InterfaceC3072m3 interfaceC3072m3) {
        throw new UnsupportedOperationException();
    }

    @Override // p033j$.util.stream.AbstractC3016d1, p033j$.util.stream.InterfaceC3022e1
    /* renamed from: Y */
    public void mo251Y(InterfaceC2826p interfaceC2826p) {
        if (!isParallel()) {
            AbstractC3016d1.m490K0(m498I0()).mo186d(interfaceC2826p);
            return;
        }
        Objects.requireNonNull(interfaceC2826p);
        m497w0(new C3069m0(interfaceC2826p, true));
    }

    @Override // p033j$.util.stream.AbstractC3016d1, p033j$.util.stream.InterfaceC3022e1
    /* renamed from: d */
    public void mo250d(InterfaceC2826p interfaceC2826p) {
        if (isParallel()) {
            super.mo250d(interfaceC2826p);
        } else {
            AbstractC3016d1.m490K0(m498I0()).mo186d(interfaceC2826p);
        }
    }

    @Override // p033j$.util.stream.AbstractC3008c, p033j$.util.stream.InterfaceC3032g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC3022e1 parallel() {
        parallel();
        return this;
    }

    @Override // p033j$.util.stream.AbstractC3008c, p033j$.util.stream.InterfaceC3032g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC3022e1 sequential() {
        sequential();
        return this;
    }
}
