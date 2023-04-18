package p034j$.util.stream;

import java.util.concurrent.CountedCompleter;
/* renamed from: j$.util.stream.w2 */
/* loaded from: classes2.dex */
abstract class AbstractC2974w2 extends CountedCompleter {

    /* renamed from: a */
    protected final InterfaceC2694A1 f1074a;

    /* renamed from: b */
    protected final int f1075b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2974w2(InterfaceC2694A1 interfaceC2694A1, int i) {
        this.f1074a = interfaceC2694A1;
        this.f1075b = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2974w2(AbstractC2974w2 abstractC2974w2, InterfaceC2694A1 interfaceC2694A1, int i) {
        super(abstractC2974w2);
        this.f1074a = interfaceC2694A1;
        this.f1075b = i;
    }

    /* renamed from: a */
    abstract void mo311a();

    /* renamed from: b */
    abstract AbstractC2974w2 mo310b(int i, int i2);

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        AbstractC2974w2 abstractC2974w2 = this;
        while (abstractC2974w2.f1074a.mo315p() != 0) {
            abstractC2974w2.setPendingCount(abstractC2974w2.f1074a.mo315p() - 1);
            int i = 0;
            int i2 = 0;
            while (i < abstractC2974w2.f1074a.mo315p() - 1) {
                AbstractC2974w2 mo310b = abstractC2974w2.mo310b(i, abstractC2974w2.f1075b + i2);
                i2 = (int) (i2 + mo310b.f1074a.count());
                mo310b.fork();
                i++;
            }
            abstractC2974w2 = abstractC2974w2.mo310b(i, abstractC2974w2.f1075b + i2);
        }
        abstractC2974w2.mo311a();
        abstractC2974w2.propagateCompletion();
    }
}
