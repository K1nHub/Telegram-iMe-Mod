package p033j$.util.stream;
/* renamed from: j$.util.stream.C1 */
/* loaded from: classes2.dex */
abstract class AbstractC2871C1 implements InterfaceC2859A1 {

    /* renamed from: a */
    protected final InterfaceC2859A1 f790a;

    /* renamed from: b */
    protected final InterfaceC2859A1 f791b;

    /* renamed from: c */
    private final long f792c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2871C1(InterfaceC2859A1 interfaceC2859A1, InterfaceC2859A1 interfaceC2859A12) {
        this.f790a = interfaceC2859A1;
        this.f791b = interfaceC2859A12;
        this.f792c = interfaceC2859A1.count() + interfaceC2859A12.count();
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: b */
    public InterfaceC2859A1 mo298b(int i) {
        if (i == 0) {
            return this.f790a;
        }
        if (i == 1) {
            return this.f791b;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC3156z1 mo298b(int i) {
        return (InterfaceC3156z1) mo298b(i);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public long count() {
        return this.f792c;
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: p */
    public int mo338p() {
        return 2;
    }
}
