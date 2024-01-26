package p033j$.util.stream;

import p033j$.util.Spliterator;
import p033j$.util.function.IntFunction;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.v3 */
/* loaded from: classes2.dex */
public class C3125v3 extends AbstractC3003b1 {

    /* renamed from: l */
    final /* synthetic */ long f1207l;

    /* renamed from: m */
    final /* synthetic */ long f1208m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3125v3(AbstractC3007c abstractC3007c, EnumC3024e4 enumC3024e4, int i, long j, long j2) {
        super(abstractC3007c, enumC3024e4, i);
        this.f1207l = j;
        this.f1208m = j2;
    }

    @Override // p033j$.util.stream.AbstractC3007c
    /* renamed from: D0 */
    InterfaceC2850A1 mo352D0(AbstractC3142y2 abstractC3142y2, Spliterator spliterator, IntFunction intFunction) {
        long mo359p0 = abstractC3142y2.mo359p0(spliterator);
        if (mo359p0 > 0 && spliterator.hasCharacteristics(16384)) {
            return AbstractC3136x2.m374h(abstractC3142y2, AbstractC2858B3.m586b(abstractC3142y2.mo358q0(), spliterator, this.f1207l, this.f1208m), true);
        }
        return !EnumC3018d4.ORDERED.m487d(abstractC3142y2.mo357r0()) ? AbstractC3136x2.m374h(this, m384M0((Spliterator.InterfaceC2773c) abstractC3142y2.mo353v0(spliterator), this.f1207l, this.f1208m, mo359p0), true) : (InterfaceC2850A1) new C2852A3(this, abstractC3142y2, spliterator, intFunction, this.f1207l, this.f1208m).invoke();
    }

    @Override // p033j$.util.stream.AbstractC3007c
    /* renamed from: E0 */
    Spliterator mo351E0(AbstractC3142y2 abstractC3142y2, Spliterator spliterator) {
        long m584d;
        long mo359p0 = abstractC3142y2.mo359p0(spliterator);
        if (mo359p0 > 0 && spliterator.hasCharacteristics(16384)) {
            Spliterator.InterfaceC2773c interfaceC2773c = (Spliterator.InterfaceC2773c) abstractC3142y2.mo353v0(spliterator);
            long j = this.f1207l;
            m584d = AbstractC2858B3.m584d(j, this.f1208m);
            return new C3144y4(interfaceC2773c, j, m584d);
        }
        return !EnumC3018d4.ORDERED.m487d(abstractC3142y2.mo357r0()) ? m384M0((Spliterator.InterfaceC2773c) abstractC3142y2.mo353v0(spliterator), this.f1207l, this.f1208m, mo359p0) : ((InterfaceC2850A1) new C2852A3(this, abstractC3142y2, spliterator, new IntFunction() { // from class: j$.util.stream.t3
            @Override // p033j$.util.function.IntFunction
            public final Object apply(int i) {
                return new Long[i];
            }
        }, this.f1207l, this.f1208m).invoke()).spliterator();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3007c
    /* renamed from: G0 */
    public InterfaceC3071m3 mo350G0(int i, InterfaceC3071m3 interfaceC3071m3) {
        return new C3119u3(this, interfaceC3071m3);
    }

    /* renamed from: M0 */
    Spliterator.InterfaceC2773c m384M0(Spliterator.InterfaceC2773c interfaceC2773c, long j, long j2, long j3) {
        long j4;
        long j5 = 0;
        if (j <= j3) {
            j4 = j2 >= 0 ? Math.min(j2, j3 - j) : j3 - j;
        } else {
            j5 = j;
            j4 = j2;
        }
        return new C2889G4(interfaceC2773c, j5, j4);
    }
}
