package p033j$.util.stream;
/* renamed from: j$.util.stream.C1 */
/* loaded from: classes2.dex */
abstract class AbstractC3010C1 implements InterfaceC2998A1 {

    /* renamed from: a */
    protected final InterfaceC2998A1 f800a;

    /* renamed from: b */
    protected final InterfaceC2998A1 f801b;

    /* renamed from: c */
    private final long f802c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3010C1(InterfaceC2998A1 interfaceC2998A1, InterfaceC2998A1 interfaceC2998A12) {
        this.f800a = interfaceC2998A1;
        this.f801b = interfaceC2998A12;
        this.f802c = interfaceC2998A1.count() + interfaceC2998A12.count();
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: b */
    public InterfaceC2998A1 mo298b(int i) {
        if (i == 0) {
            return this.f800a;
        }
        if (i == 1) {
            return this.f801b;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC3295z1 mo298b(int i) {
        return (InterfaceC3295z1) mo298b(i);
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    public long count() {
        return this.f802c;
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: p */
    public int mo338p() {
        return 2;
    }
}
