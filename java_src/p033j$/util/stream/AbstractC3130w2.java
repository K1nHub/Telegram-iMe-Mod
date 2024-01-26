package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
/* renamed from: j$.util.stream.w2 */
/* loaded from: classes2.dex */
abstract class AbstractC3130w2 extends CountedCompleter {

    /* renamed from: a */
    protected final InterfaceC2850A1 f1212a;

    /* renamed from: b */
    protected final int f1213b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3130w2(InterfaceC2850A1 interfaceC2850A1, int i) {
        this.f1212a = interfaceC2850A1;
        this.f1213b = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3130w2(AbstractC3130w2 abstractC3130w2, InterfaceC2850A1 interfaceC2850A1, int i) {
        super(abstractC3130w2);
        this.f1212a = interfaceC2850A1;
        this.f1213b = i;
    }

    /* renamed from: a */
    abstract void mo383a();

    /* renamed from: b */
    abstract AbstractC3130w2 mo382b(int i, int i2);

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        AbstractC3130w2 abstractC3130w2 = this;
        while (abstractC3130w2.f1212a.mo387n() != 0) {
            abstractC3130w2.setPendingCount(abstractC3130w2.f1212a.mo387n() - 1);
            int i = 0;
            int i2 = 0;
            while (i < abstractC3130w2.f1212a.mo387n() - 1) {
                AbstractC3130w2 mo382b = abstractC3130w2.mo382b(i, abstractC3130w2.f1213b + i2);
                i2 = (int) (i2 + mo382b.f1212a.count());
                mo382b.fork();
                i++;
            }
            abstractC3130w2 = abstractC3130w2.mo382b(i, abstractC3130w2.f1213b + i2);
        }
        abstractC3130w2.mo383a();
        abstractC3130w2.propagateCompletion();
    }
}
