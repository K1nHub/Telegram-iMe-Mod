package p033j$.util.stream;
/* renamed from: j$.util.stream.C1 */
/* loaded from: classes2.dex */
abstract class AbstractC2926C1 implements InterfaceC2914A1 {

    /* renamed from: a */
    protected final InterfaceC2914A1 f791a;

    /* renamed from: b */
    protected final InterfaceC2914A1 f792b;

    /* renamed from: c */
    private final long f793c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2926C1(InterfaceC2914A1 interfaceC2914A1, InterfaceC2914A1 interfaceC2914A12) {
        this.f791a = interfaceC2914A1;
        this.f792b = interfaceC2914A12;
        this.f793c = interfaceC2914A1.count() + interfaceC2914A12.count();
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: b */
    public InterfaceC2914A1 mo298b(int i) {
        if (i == 0) {
            return this.f791a;
        }
        if (i == 1) {
            return this.f792b;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC3211z1 mo298b(int i) {
        return (InterfaceC3211z1) mo298b(i);
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    public long count() {
        return this.f793c;
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: p */
    public int mo338p() {
        return 2;
    }
}
