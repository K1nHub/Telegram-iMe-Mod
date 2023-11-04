package p033j$.util.stream;

import p033j$.util.Spliterator;
import p033j$.util.function.IntFunction;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.p3 */
/* loaded from: classes2.dex */
public class C3094p3 extends AbstractC3016c3 {

    /* renamed from: l */
    final /* synthetic */ long f1153l;

    /* renamed from: m */
    final /* synthetic */ long f1154m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3094p3(AbstractC3012c abstractC3012c, EnumC3029e4 enumC3029e4, int i, long j, long j2) {
        super(abstractC3012c, enumC3029e4, i);
        this.f1153l = j;
        this.f1154m = j2;
    }

    @Override // p033j$.util.stream.AbstractC3012c
    /* renamed from: D0 */
    InterfaceC2855A1 mo349D0(AbstractC3147y2 abstractC3147y2, Spliterator spliterator, IntFunction intFunction) {
        long mo356p0 = abstractC3147y2.mo356p0(spliterator);
        if (mo356p0 > 0 && spliterator.hasCharacteristics(16384)) {
            return AbstractC3141x2.m374e(abstractC3147y2, AbstractC2863B3.m583b(abstractC3147y2.mo355q0(), spliterator, this.f1153l, this.f1154m), true, intFunction);
        }
        return !EnumC3023d4.ORDERED.m484d(abstractC3147y2.mo354r0()) ? AbstractC3141x2.m374e(this, m396K0(abstractC3147y2.mo350v0(spliterator), this.f1153l, this.f1154m, mo356p0), true, intFunction) : (InterfaceC2855A1) new C2857A3(this, abstractC3147y2, spliterator, intFunction, this.f1153l, this.f1154m).invoke();
    }

    @Override // p033j$.util.stream.AbstractC3012c
    /* renamed from: E0 */
    Spliterator mo348E0(AbstractC3147y2 abstractC3147y2, Spliterator spliterator) {
        long m581d;
        long mo356p0 = abstractC3147y2.mo356p0(spliterator);
        if (mo356p0 > 0 && spliterator.hasCharacteristics(16384)) {
            Spliterator mo350v0 = abstractC3147y2.mo350v0(spliterator);
            long j = this.f1153l;
            m581d = AbstractC2863B3.m581d(j, this.f1154m);
            return new C2870C4(mo350v0, j, m581d);
        }
        return !EnumC3023d4.ORDERED.m484d(abstractC3147y2.mo354r0()) ? m396K0(abstractC3147y2.mo350v0(spliterator), this.f1153l, this.f1154m, mo356p0) : ((InterfaceC2855A1) new C2857A3(this, abstractC3147y2, spliterator, new IntFunction() { // from class: j$.util.stream.n3
            @Override // p033j$.util.function.IntFunction
            public final Object apply(int i) {
                return new Object[i];
            }
        }, this.f1153l, this.f1154m).invoke()).spliterator();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3012c
    /* renamed from: G0 */
    public InterfaceC3076m3 mo347G0(int i, InterfaceC3076m3 interfaceC3076m3) {
        return new C3088o3(this, interfaceC3076m3);
    }

    /* renamed from: K0 */
    Spliterator m396K0(Spliterator spliterator, long j, long j2, long j3) {
        long j4;
        long j5 = 0;
        if (j <= j3) {
            j4 = j2 >= 0 ? Math.min(j2, j3 - j) : j3 - j;
        } else {
            j5 = j;
            j4 = j2;
        }
        return new C2906I4(spliterator, j5, j4);
    }
}
