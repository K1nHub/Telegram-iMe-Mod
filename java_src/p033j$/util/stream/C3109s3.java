package p033j$.util.stream;

import p033j$.util.Spliterator;
import p033j$.util.function.IntFunction;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.s3 */
/* loaded from: classes2.dex */
public class C3109s3 extends AbstractC2905J0 {

    /* renamed from: l */
    final /* synthetic */ long f1190l;

    /* renamed from: m */
    final /* synthetic */ long f1191m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3109s3(AbstractC3009c abstractC3009c, EnumC3026e4 enumC3026e4, int i, long j, long j2) {
        super(abstractC3009c, enumC3026e4, i);
        this.f1190l = j;
        this.f1191m = j2;
    }

    @Override // p033j$.util.stream.AbstractC3009c
    /* renamed from: D0 */
    InterfaceC2852A1 mo349D0(AbstractC3144y2 abstractC3144y2, Spliterator spliterator, IntFunction intFunction) {
        long mo356p0 = abstractC3144y2.mo356p0(spliterator);
        if (mo356p0 > 0 && spliterator.hasCharacteristics(16384)) {
            return AbstractC3138x2.m372g(abstractC3144y2, AbstractC2860B3.m583b(abstractC3144y2.mo355q0(), spliterator, this.f1190l, this.f1191m), true);
        }
        return !EnumC3020d4.ORDERED.m484d(abstractC3144y2.mo354r0()) ? AbstractC3138x2.m372g(this, m390M0((Spliterator.InterfaceC2774b) abstractC3144y2.mo350v0(spliterator), this.f1190l, this.f1191m, mo356p0), true) : (InterfaceC2852A1) new C2854A3(this, abstractC3144y2, spliterator, intFunction, this.f1190l, this.f1191m).invoke();
    }

    @Override // p033j$.util.stream.AbstractC3009c
    /* renamed from: E0 */
    Spliterator mo348E0(AbstractC3144y2 abstractC3144y2, Spliterator spliterator) {
        long m581d;
        long mo356p0 = abstractC3144y2.mo356p0(spliterator);
        if (mo356p0 > 0 && spliterator.hasCharacteristics(16384)) {
            Spliterator.InterfaceC2774b interfaceC2774b = (Spliterator.InterfaceC2774b) abstractC3144y2.mo350v0(spliterator);
            long j = this.f1190l;
            m581d = AbstractC2860B3.m581d(j, this.f1191m);
            return new C3134w4(interfaceC2774b, j, m581d);
        }
        return !EnumC3020d4.ORDERED.m484d(abstractC3144y2.mo354r0()) ? m390M0((Spliterator.InterfaceC2774b) abstractC3144y2.mo350v0(spliterator), this.f1190l, this.f1191m, mo356p0) : ((InterfaceC2852A1) new C2854A3(this, abstractC3144y2, spliterator, new IntFunction() { // from class: j$.util.stream.q3
            @Override // p033j$.util.function.IntFunction
            public final Object apply(int i) {
                return new Integer[i];
            }
        }, this.f1190l, this.f1191m).invoke()).spliterator();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3009c
    /* renamed from: G0 */
    public InterfaceC3073m3 mo347G0(int i, InterfaceC3073m3 interfaceC3073m3) {
        return new C3103r3(this, interfaceC3073m3);
    }

    /* renamed from: M0 */
    Spliterator.InterfaceC2774b m390M0(Spliterator.InterfaceC2774b interfaceC2774b, long j, long j2, long j3) {
        long j4;
        long j5 = 0;
        if (j <= j3) {
            j4 = j2 >= 0 ? Math.min(j2, j3 - j) : j3 - j;
        } else {
            j5 = j;
            j4 = j2;
        }
        return new C2885F4(interfaceC2774b, j5, j4);
    }
}
