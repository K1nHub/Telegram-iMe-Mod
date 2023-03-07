package p034j$.util.stream;
/* renamed from: j$.util.stream.C1 */
/* loaded from: classes2.dex */
abstract class AbstractC2505C1 implements InterfaceC2493A1 {

    /* renamed from: a */
    protected final InterfaceC2493A1 f696a;

    /* renamed from: b */
    protected final InterfaceC2493A1 f697b;

    /* renamed from: c */
    private final long f698c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2505C1(InterfaceC2493A1 interfaceC2493A1, InterfaceC2493A1 interfaceC2493A12) {
        this.f696a = interfaceC2493A1;
        this.f697b = interfaceC2493A12;
        this.f698c = interfaceC2493A1.count() + interfaceC2493A12.count();
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    /* renamed from: b */
    public InterfaceC2493A1 mo295b(int i) {
        if (i == 0) {
            return this.f696a;
        }
        if (i == 1) {
            return this.f697b;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2790z1 mo295b(int i) {
        return (InterfaceC2790z1) mo295b(i);
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    public long count() {
        return this.f698c;
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    /* renamed from: p */
    public int mo335p() {
        return 2;
    }
}
