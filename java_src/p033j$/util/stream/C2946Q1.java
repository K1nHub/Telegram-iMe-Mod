package p033j$.util.stream;

import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.Q1 */
/* loaded from: classes2.dex */
public final class C2946Q1 extends AbstractC2951R1 implements InterfaceC3141y1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2946Q1(InterfaceC3141y1 interfaceC3141y1, InterfaceC3141y1 interfaceC3141y12) {
        super(interfaceC3141y1, interfaceC3141y12);
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: a */
    public /* synthetic */ void mo389i(Long[] lArr, int i) {
        AbstractC3081o1.m417j(this, lArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC3147z1
    /* renamed from: f */
    public long[] mo346c(int i) {
        return new long[i];
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3081o1.m414m(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: h */
    public /* synthetic */ InterfaceC3141y1 mo385q(long j, long j2, IntFunction intFunction) {
        return AbstractC3081o1.m411p(this, j, j2, intFunction);
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    public Spliterator.InterfaceC2774d spliterator() {
        return new C3040h2(this);
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    public Spliterator spliterator() {
        return new C3040h2(this);
    }
}
