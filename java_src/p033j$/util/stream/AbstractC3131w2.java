package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
/* renamed from: j$.util.stream.w2 */
/* loaded from: classes2.dex */
abstract class AbstractC3131w2 extends CountedCompleter {

    /* renamed from: a */
    protected final InterfaceC2851A1 f1212a;

    /* renamed from: b */
    protected final int f1213b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3131w2(InterfaceC2851A1 interfaceC2851A1, int i) {
        this.f1212a = interfaceC2851A1;
        this.f1213b = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3131w2(AbstractC3131w2 abstractC3131w2, InterfaceC2851A1 interfaceC2851A1, int i) {
        super(abstractC3131w2);
        this.f1212a = interfaceC2851A1;
        this.f1213b = i;
    }

    /* renamed from: a */
    abstract void mo379a();

    /* renamed from: b */
    abstract AbstractC3131w2 mo378b(int i, int i2);

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        AbstractC3131w2 abstractC3131w2 = this;
        while (abstractC3131w2.f1212a.mo383n() != 0) {
            abstractC3131w2.setPendingCount(abstractC3131w2.f1212a.mo383n() - 1);
            int i = 0;
            int i2 = 0;
            while (i < abstractC3131w2.f1212a.mo383n() - 1) {
                AbstractC3131w2 mo378b = abstractC3131w2.mo378b(i, abstractC3131w2.f1213b + i2);
                i2 = (int) (i2 + mo378b.f1212a.count());
                mo378b.fork();
                i++;
            }
            abstractC3131w2 = abstractC3131w2.mo378b(i, abstractC3131w2.f1213b + i2);
        }
        abstractC3131w2.mo379a();
        abstractC3131w2.propagateCompletion();
    }
}
