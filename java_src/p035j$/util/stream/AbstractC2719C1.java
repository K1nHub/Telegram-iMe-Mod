package p035j$.util.stream;
/* renamed from: j$.util.stream.C1 */
/* loaded from: classes2.dex */
abstract class AbstractC2719C1 implements InterfaceC2707A1 {

    /* renamed from: a */
    protected final InterfaceC2707A1 f707a;

    /* renamed from: b */
    protected final InterfaceC2707A1 f708b;

    /* renamed from: c */
    private final long f709c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2719C1(InterfaceC2707A1 interfaceC2707A1, InterfaceC2707A1 interfaceC2707A12) {
        this.f707a = interfaceC2707A1;
        this.f708b = interfaceC2707A12;
        this.f709c = interfaceC2707A1.count() + interfaceC2707A12.count();
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: b */
    public InterfaceC2707A1 mo289b(int i) {
        if (i == 0) {
            return this.f707a;
        }
        if (i == 1) {
            return this.f708b;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC3004z1 mo289b(int i) {
        return (InterfaceC3004z1) mo289b(i);
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    public long count() {
        return this.f709c;
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: p */
    public int mo329p() {
        return 2;
    }
}
