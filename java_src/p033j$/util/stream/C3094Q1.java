package p033j$.util.stream;

import p033j$.util.InterfaceC2992s;
import p033j$.util.InterfaceC3299t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2966m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.Q1 */
/* loaded from: classes2.dex */
public final class C3094Q1 extends AbstractC3099R1 implements InterfaceC3289y1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3094Q1(InterfaceC3289y1 interfaceC3289y1, InterfaceC3289y1 interfaceC3289y12) {
        super(interfaceC3289y1, interfaceC3289y12);
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: a */
    public /* synthetic */ void mo340i(Long[] lArr, int i) {
        AbstractC3229o1.m368j(this, lArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC3295z1
    /* renamed from: f */
    public long[] mo297c(int i) {
        return new long[i];
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3229o1.m365m(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: h */
    public /* synthetic */ InterfaceC3289y1 mo336r(long j, long j2, InterfaceC2966m interfaceC2966m) {
        return AbstractC3229o1.m362p(this, j, j2, interfaceC2966m);
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    public InterfaceC3299t spliterator() {
        return new C3188h2(this);
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    public InterfaceC2992s spliterator() {
        return new C3188h2(this);
    }
}
