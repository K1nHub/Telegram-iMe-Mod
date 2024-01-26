package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.InterfaceC2825p;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.a1 */
/* loaded from: classes2.dex */
public class C2997a1 extends AbstractC3015d1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2997a1(Spliterator spliterator, int i, boolean z) {
        super(spliterator, i, z);
    }

    @Override // p033j$.util.stream.AbstractC3007c
    /* renamed from: F0 */
    final boolean mo491F0() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3007c
    /* renamed from: G0 */
    public final InterfaceC3071m3 mo350G0(int i, InterfaceC3071m3 interfaceC3071m3) {
        throw new UnsupportedOperationException();
    }

    @Override // p033j$.util.stream.AbstractC3015d1, p033j$.util.stream.InterfaceC3021e1
    /* renamed from: Y */
    public void mo255Y(InterfaceC2825p interfaceC2825p) {
        if (!isParallel()) {
            AbstractC3015d1.m494K0(m502I0()).mo190d(interfaceC2825p);
            return;
        }
        Objects.requireNonNull(interfaceC2825p);
        m501w0(new C3068m0(interfaceC2825p, true));
    }

    @Override // p033j$.util.stream.AbstractC3015d1, p033j$.util.stream.InterfaceC3021e1
    /* renamed from: d */
    public void mo254d(InterfaceC2825p interfaceC2825p) {
        if (isParallel()) {
            super.mo254d(interfaceC2825p);
        } else {
            AbstractC3015d1.m494K0(m502I0()).mo190d(interfaceC2825p);
        }
    }

    @Override // p033j$.util.stream.AbstractC3007c, p033j$.util.stream.InterfaceC3031g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC3021e1 parallel() {
        parallel();
        return this;
    }

    @Override // p033j$.util.stream.AbstractC3007c, p033j$.util.stream.InterfaceC3031g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC3021e1 sequential() {
        sequential();
        return this;
    }
}
