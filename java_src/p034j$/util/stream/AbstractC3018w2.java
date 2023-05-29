package p034j$.util.stream;

import java.util.concurrent.CountedCompleter;
/* renamed from: j$.util.stream.w2 */
/* loaded from: classes2.dex */
abstract class AbstractC3018w2 extends CountedCompleter {

    /* renamed from: a */
    protected final InterfaceC2738A1 f1077a;

    /* renamed from: b */
    protected final int f1078b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3018w2(InterfaceC2738A1 interfaceC2738A1, int i) {
        this.f1077a = interfaceC2738A1;
        this.f1078b = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3018w2(AbstractC3018w2 abstractC3018w2, InterfaceC2738A1 interfaceC2738A1, int i) {
        super(abstractC3018w2);
        this.f1077a = interfaceC2738A1;
        this.f1078b = i;
    }

    /* renamed from: a */
    abstract void mo316a();

    /* renamed from: b */
    abstract AbstractC3018w2 mo315b(int i, int i2);

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        AbstractC3018w2 abstractC3018w2 = this;
        while (abstractC3018w2.f1077a.mo320p() != 0) {
            abstractC3018w2.setPendingCount(abstractC3018w2.f1077a.mo320p() - 1);
            int i = 0;
            int i2 = 0;
            while (i < abstractC3018w2.f1077a.mo320p() - 1) {
                AbstractC3018w2 mo315b = abstractC3018w2.mo315b(i, abstractC3018w2.f1078b + i2);
                i2 = (int) (i2 + mo315b.f1077a.count());
                mo315b.fork();
                i++;
            }
            abstractC3018w2 = abstractC3018w2.mo315b(i, abstractC3018w2.f1078b + i2);
        }
        abstractC3018w2.mo316a();
        abstractC3018w2.propagateCompletion();
    }
}
