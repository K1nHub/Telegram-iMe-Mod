package p034j$.util.stream;

import java.util.concurrent.CountedCompleter;
/* renamed from: j$.util.stream.w2 */
/* loaded from: classes2.dex */
abstract class AbstractC2911w2 extends CountedCompleter {

    /* renamed from: a */
    protected final InterfaceC2631A1 f1074a;

    /* renamed from: b */
    protected final int f1075b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2911w2(InterfaceC2631A1 interfaceC2631A1, int i) {
        this.f1074a = interfaceC2631A1;
        this.f1075b = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2911w2(AbstractC2911w2 abstractC2911w2, InterfaceC2631A1 interfaceC2631A1, int i) {
        super(abstractC2911w2);
        this.f1074a = interfaceC2631A1;
        this.f1075b = i;
    }

    /* renamed from: a */
    abstract void mo330a();

    /* renamed from: b */
    abstract AbstractC2911w2 mo329b(int i, int i2);

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        AbstractC2911w2 abstractC2911w2 = this;
        while (abstractC2911w2.f1074a.mo334p() != 0) {
            abstractC2911w2.setPendingCount(abstractC2911w2.f1074a.mo334p() - 1);
            int i = 0;
            int i2 = 0;
            while (i < abstractC2911w2.f1074a.mo334p() - 1) {
                AbstractC2911w2 mo329b = abstractC2911w2.mo329b(i, abstractC2911w2.f1075b + i2);
                i2 = (int) (i2 + mo329b.f1074a.count());
                mo329b.fork();
                i++;
            }
            abstractC2911w2 = abstractC2911w2.mo329b(i, abstractC2911w2.f1075b + i2);
        }
        abstractC2911w2.mo330a();
        abstractC2911w2.propagateCompletion();
    }
}
