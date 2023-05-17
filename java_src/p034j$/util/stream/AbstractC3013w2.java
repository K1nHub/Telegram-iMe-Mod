package p034j$.util.stream;

import java.util.concurrent.CountedCompleter;
/* renamed from: j$.util.stream.w2 */
/* loaded from: classes2.dex */
abstract class AbstractC3013w2 extends CountedCompleter {

    /* renamed from: a */
    protected final InterfaceC2733A1 f1077a;

    /* renamed from: b */
    protected final int f1078b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3013w2(InterfaceC2733A1 interfaceC2733A1, int i) {
        this.f1077a = interfaceC2733A1;
        this.f1078b = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3013w2(AbstractC3013w2 abstractC3013w2, InterfaceC2733A1 interfaceC2733A1, int i) {
        super(abstractC3013w2);
        this.f1077a = interfaceC2733A1;
        this.f1078b = i;
    }

    /* renamed from: a */
    abstract void mo316a();

    /* renamed from: b */
    abstract AbstractC3013w2 mo315b(int i, int i2);

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        AbstractC3013w2 abstractC3013w2 = this;
        while (abstractC3013w2.f1077a.mo320p() != 0) {
            abstractC3013w2.setPendingCount(abstractC3013w2.f1077a.mo320p() - 1);
            int i = 0;
            int i2 = 0;
            while (i < abstractC3013w2.f1077a.mo320p() - 1) {
                AbstractC3013w2 mo315b = abstractC3013w2.mo315b(i, abstractC3013w2.f1078b + i2);
                i2 = (int) (i2 + mo315b.f1077a.count());
                mo315b.fork();
                i++;
            }
            abstractC3013w2 = abstractC3013w2.mo315b(i, abstractC3013w2.f1078b + i2);
        }
        abstractC3013w2.mo316a();
        abstractC3013w2.propagateCompletion();
    }
}
