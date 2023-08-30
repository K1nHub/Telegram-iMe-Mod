package p033j$.util.stream;

import p033j$.util.InterfaceC2992s;
import p033j$.util.InterfaceC3299t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2966m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.O1 */
/* loaded from: classes2.dex */
public final class C3082O1 extends AbstractC3099R1 implements InterfaceC3265u1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3082O1(InterfaceC3265u1 interfaceC3265u1, InterfaceC3265u1 interfaceC3265u12) {
        super(interfaceC3265u1, interfaceC3265u12);
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: a */
    public /* synthetic */ void mo340i(Double[] dArr, int i) {
        AbstractC3229o1.m370h(this, dArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC3295z1
    /* renamed from: f */
    public double[] mo297c(int i) {
        return new double[i];
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3229o1.m367k(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: h */
    public /* synthetic */ InterfaceC3265u1 mo336r(long j, long j2, InterfaceC2966m interfaceC2966m) {
        return AbstractC3229o1.m364n(this, j, j2, interfaceC2966m);
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    public InterfaceC3299t spliterator() {
        return new C3176f2(this);
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    public InterfaceC2992s spliterator() {
        return new C3176f2(this);
    }
}
