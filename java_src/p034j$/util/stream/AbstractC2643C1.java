package p034j$.util.stream;
/* renamed from: j$.util.stream.C1 */
/* loaded from: classes2.dex */
abstract class AbstractC2643C1 implements InterfaceC2631A1 {

    /* renamed from: a */
    protected final InterfaceC2631A1 f702a;

    /* renamed from: b */
    protected final InterfaceC2631A1 f703b;

    /* renamed from: c */
    private final long f704c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2643C1(InterfaceC2631A1 interfaceC2631A1, InterfaceC2631A1 interfaceC2631A12) {
        this.f702a = interfaceC2631A1;
        this.f703b = interfaceC2631A12;
        this.f704c = interfaceC2631A1.count() + interfaceC2631A12.count();
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: b */
    public InterfaceC2631A1 mo294b(int i) {
        if (i == 0) {
            return this.f702a;
        }
        if (i == 1) {
            return this.f703b;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2928z1 mo294b(int i) {
        return (InterfaceC2928z1) mo294b(i);
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    public long count() {
        return this.f704c;
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: p */
    public int mo334p() {
        return 2;
    }
}
