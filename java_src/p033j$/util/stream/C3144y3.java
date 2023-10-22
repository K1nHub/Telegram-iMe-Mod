package p033j$.util.stream;

import p033j$.util.Spliterator;
import p033j$.util.function.IntFunction;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.y3 */
/* loaded from: classes2.dex */
public class C3144y3 extends AbstractC2945Q {

    /* renamed from: l */
    final /* synthetic */ long f1231l;

    /* renamed from: m */
    final /* synthetic */ long f1232m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3144y3(AbstractC3008c abstractC3008c, EnumC3025e4 enumC3025e4, int i, long j, long j2) {
        super(abstractC3008c, enumC3025e4, i);
        this.f1231l = j;
        this.f1232m = j2;
    }

    @Override // p033j$.util.stream.AbstractC3008c
    /* renamed from: D0 */
    InterfaceC2851A1 mo348D0(AbstractC3143y2 abstractC3143y2, Spliterator spliterator, IntFunction intFunction) {
        long mo355p0 = abstractC3143y2.mo355p0(spliterator);
        if (mo355p0 > 0 && spliterator.hasCharacteristics(16384)) {
            return AbstractC3137x2.m372f(abstractC3143y2, AbstractC2859B3.m582b(abstractC3143y2.mo354q0(), spliterator, this.f1231l, this.f1232m), true);
        }
        return !EnumC3019d4.ORDERED.m483d(abstractC3143y2.mo353r0()) ? AbstractC3137x2.m372f(this, m345M0((Spliterator.InterfaceC2772a) abstractC3143y2.mo349v0(spliterator), this.f1231l, this.f1232m, mo355p0), true) : (InterfaceC2851A1) new C2853A3(this, abstractC3143y2, spliterator, intFunction, this.f1231l, this.f1232m).invoke();
    }

    @Override // p033j$.util.stream.AbstractC3008c
    /* renamed from: E0 */
    Spliterator mo347E0(AbstractC3143y2 abstractC3143y2, Spliterator spliterator) {
        long m580d;
        long mo355p0 = abstractC3143y2.mo355p0(spliterator);
        if (mo355p0 > 0 && spliterator.hasCharacteristics(16384)) {
            Spliterator.InterfaceC2772a interfaceC2772a = (Spliterator.InterfaceC2772a) abstractC3143y2.mo349v0(spliterator);
            long j = this.f1231l;
            m580d = AbstractC2859B3.m580d(j, this.f1232m);
            return new C3121u4(interfaceC2772a, j, m580d);
        }
        return !EnumC3019d4.ORDERED.m483d(abstractC3143y2.mo353r0()) ? m345M0((Spliterator.InterfaceC2772a) abstractC3143y2.mo349v0(spliterator), this.f1231l, this.f1232m, mo355p0) : ((InterfaceC2851A1) new C2853A3(this, abstractC3143y2, spliterator, new IntFunction() { // from class: j$.util.stream.w3
            @Override // p033j$.util.function.IntFunction
            public final Object apply(int i) {
                return new Double[i];
            }
        }, this.f1231l, this.f1232m).invoke()).spliterator();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3008c
    /* renamed from: G0 */
    public InterfaceC3072m3 mo346G0(int i, InterfaceC3072m3 interfaceC3072m3) {
        return new C3138x3(this, interfaceC3072m3);
    }

    /* renamed from: M0 */
    Spliterator.InterfaceC2772a m345M0(Spliterator.InterfaceC2772a interfaceC2772a, long j, long j2, long j3) {
        long j4;
        long j5 = 0;
        if (j <= j3) {
            j4 = j2 >= 0 ? Math.min(j2, j3 - j) : j3 - j;
        } else {
            j5 = j;
            j4 = j2;
        }
        return new C2878E4(interfaceC2772a, j5, j4);
    }
}
