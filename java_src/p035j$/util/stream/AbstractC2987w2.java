package p035j$.util.stream;

import java.util.concurrent.CountedCompleter;
/* renamed from: j$.util.stream.w2 */
/* loaded from: classes2.dex */
abstract class AbstractC2987w2 extends CountedCompleter {

    /* renamed from: a */
    protected final InterfaceC2707A1 f1079a;

    /* renamed from: b */
    protected final int f1080b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2987w2(InterfaceC2707A1 interfaceC2707A1, int i) {
        this.f1079a = interfaceC2707A1;
        this.f1080b = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2987w2(AbstractC2987w2 abstractC2987w2, InterfaceC2707A1 interfaceC2707A1, int i) {
        super(abstractC2987w2);
        this.f1079a = interfaceC2707A1;
        this.f1080b = i;
    }

    /* renamed from: a */
    abstract void mo325a();

    /* renamed from: b */
    abstract AbstractC2987w2 mo324b(int i, int i2);

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        AbstractC2987w2 abstractC2987w2 = this;
        while (abstractC2987w2.f1079a.mo329p() != 0) {
            abstractC2987w2.setPendingCount(abstractC2987w2.f1079a.mo329p() - 1);
            int i = 0;
            int i2 = 0;
            while (i < abstractC2987w2.f1079a.mo329p() - 1) {
                AbstractC2987w2 mo324b = abstractC2987w2.mo324b(i, abstractC2987w2.f1080b + i2);
                i2 = (int) (i2 + mo324b.f1079a.count());
                mo324b.fork();
                i++;
            }
            abstractC2987w2 = abstractC2987w2.mo324b(i, abstractC2987w2.f1080b + i2);
        }
        abstractC2987w2.mo325a();
        abstractC2987w2.propagateCompletion();
    }
}
