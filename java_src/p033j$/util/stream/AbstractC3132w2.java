package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
/* renamed from: j$.util.stream.w2 */
/* loaded from: classes2.dex */
abstract class AbstractC3132w2 extends CountedCompleter {

    /* renamed from: a */
    protected final InterfaceC2852A1 f1212a;

    /* renamed from: b */
    protected final int f1213b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3132w2(InterfaceC2852A1 interfaceC2852A1, int i) {
        this.f1212a = interfaceC2852A1;
        this.f1213b = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3132w2(AbstractC3132w2 abstractC3132w2, InterfaceC2852A1 interfaceC2852A1, int i) {
        super(abstractC3132w2);
        this.f1212a = interfaceC2852A1;
        this.f1213b = i;
    }

    /* renamed from: a */
    abstract void mo380a();

    /* renamed from: b */
    abstract AbstractC3132w2 mo379b(int i, int i2);

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        AbstractC3132w2 abstractC3132w2 = this;
        while (abstractC3132w2.f1212a.mo384n() != 0) {
            abstractC3132w2.setPendingCount(abstractC3132w2.f1212a.mo384n() - 1);
            int i = 0;
            int i2 = 0;
            while (i < abstractC3132w2.f1212a.mo384n() - 1) {
                AbstractC3132w2 mo379b = abstractC3132w2.mo379b(i, abstractC3132w2.f1213b + i2);
                i2 = (int) (i2 + mo379b.f1212a.count());
                mo379b.fork();
                i++;
            }
            abstractC3132w2 = abstractC3132w2.mo379b(i, abstractC3132w2.f1213b + i2);
        }
        abstractC3132w2.mo380a();
        abstractC3132w2.propagateCompletion();
    }
}
