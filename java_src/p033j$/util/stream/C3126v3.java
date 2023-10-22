package p033j$.util.stream;

import p033j$.util.Spliterator;
import p033j$.util.function.IntFunction;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.v3 */
/* loaded from: classes2.dex */
public class C3126v3 extends AbstractC3004b1 {

    /* renamed from: l */
    final /* synthetic */ long f1207l;

    /* renamed from: m */
    final /* synthetic */ long f1208m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3126v3(AbstractC3008c abstractC3008c, EnumC3025e4 enumC3025e4, int i, long j, long j2) {
        super(abstractC3008c, enumC3025e4, i);
        this.f1207l = j;
        this.f1208m = j2;
    }

    @Override // p033j$.util.stream.AbstractC3008c
    /* renamed from: D0 */
    InterfaceC2851A1 mo348D0(AbstractC3143y2 abstractC3143y2, Spliterator spliterator, IntFunction intFunction) {
        long mo355p0 = abstractC3143y2.mo355p0(spliterator);
        if (mo355p0 > 0 && spliterator.hasCharacteristics(16384)) {
            return AbstractC3137x2.m370h(abstractC3143y2, AbstractC2859B3.m582b(abstractC3143y2.mo354q0(), spliterator, this.f1207l, this.f1208m), true);
        }
        return !EnumC3019d4.ORDERED.m483d(abstractC3143y2.mo353r0()) ? AbstractC3137x2.m370h(this, m380M0((Spliterator.InterfaceC2774c) abstractC3143y2.mo349v0(spliterator), this.f1207l, this.f1208m, mo355p0), true) : (InterfaceC2851A1) new C2853A3(this, abstractC3143y2, spliterator, intFunction, this.f1207l, this.f1208m).invoke();
    }

    @Override // p033j$.util.stream.AbstractC3008c
    /* renamed from: E0 */
    Spliterator mo347E0(AbstractC3143y2 abstractC3143y2, Spliterator spliterator) {
        long m580d;
        long mo355p0 = abstractC3143y2.mo355p0(spliterator);
        if (mo355p0 > 0 && spliterator.hasCharacteristics(16384)) {
            Spliterator.InterfaceC2774c interfaceC2774c = (Spliterator.InterfaceC2774c) abstractC3143y2.mo349v0(spliterator);
            long j = this.f1207l;
            m580d = AbstractC2859B3.m580d(j, this.f1208m);
            return new C3145y4(interfaceC2774c, j, m580d);
        }
        return !EnumC3019d4.ORDERED.m483d(abstractC3143y2.mo353r0()) ? m380M0((Spliterator.InterfaceC2774c) abstractC3143y2.mo349v0(spliterator), this.f1207l, this.f1208m, mo355p0) : ((InterfaceC2851A1) new C2853A3(this, abstractC3143y2, spliterator, new IntFunction() { // from class: j$.util.stream.t3
            @Override // p033j$.util.function.IntFunction
            public final Object apply(int i) {
                return new Long[i];
            }
        }, this.f1207l, this.f1208m).invoke()).spliterator();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3008c
    /* renamed from: G0 */
    public InterfaceC3072m3 mo346G0(int i, InterfaceC3072m3 interfaceC3072m3) {
        return new C3120u3(this, interfaceC3072m3);
    }

    /* renamed from: M0 */
    Spliterator.InterfaceC2774c m380M0(Spliterator.InterfaceC2774c interfaceC2774c, long j, long j2, long j3) {
        long j4;
        long j5 = 0;
        if (j <= j3) {
            j4 = j2 >= 0 ? Math.min(j2, j3 - j) : j3 - j;
        } else {
            j5 = j;
            j4 = j2;
        }
        return new C2890G4(interfaceC2774c, j5, j4);
    }
}
