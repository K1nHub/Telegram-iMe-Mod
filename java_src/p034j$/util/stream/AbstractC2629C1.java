package p034j$.util.stream;
/* renamed from: j$.util.stream.C1 */
/* loaded from: classes2.dex */
abstract class AbstractC2629C1 implements InterfaceC2617A1 {

    /* renamed from: a */
    protected final InterfaceC2617A1 f701a;

    /* renamed from: b */
    protected final InterfaceC2617A1 f702b;

    /* renamed from: c */
    private final long f703c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2629C1(InterfaceC2617A1 interfaceC2617A1, InterfaceC2617A1 interfaceC2617A12) {
        this.f701a = interfaceC2617A1;
        this.f702b = interfaceC2617A12;
        this.f703c = interfaceC2617A1.count() + interfaceC2617A12.count();
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: b */
    public InterfaceC2617A1 mo295b(int i) {
        if (i == 0) {
            return this.f701a;
        }
        if (i == 1) {
            return this.f702b;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2914z1 mo295b(int i) {
        return (InterfaceC2914z1) mo295b(i);
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    public long count() {
        return this.f703c;
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: p */
    public int mo335p() {
        return 2;
    }
}
