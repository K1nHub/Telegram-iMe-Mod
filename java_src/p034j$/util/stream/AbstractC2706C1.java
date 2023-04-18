package p034j$.util.stream;
/* renamed from: j$.util.stream.C1 */
/* loaded from: classes2.dex */
abstract class AbstractC2706C1 implements InterfaceC2694A1 {

    /* renamed from: a */
    protected final InterfaceC2694A1 f702a;

    /* renamed from: b */
    protected final InterfaceC2694A1 f703b;

    /* renamed from: c */
    private final long f704c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2706C1(InterfaceC2694A1 interfaceC2694A1, InterfaceC2694A1 interfaceC2694A12) {
        this.f702a = interfaceC2694A1;
        this.f703b = interfaceC2694A12;
        this.f704c = interfaceC2694A1.count() + interfaceC2694A12.count();
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: b */
    public InterfaceC2694A1 mo275b(int i) {
        if (i == 0) {
            return this.f702a;
        }
        if (i == 1) {
            return this.f703b;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2991z1 mo275b(int i) {
        return (InterfaceC2991z1) mo275b(i);
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    public long count() {
        return this.f704c;
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: p */
    public int mo315p() {
        return 2;
    }
}
