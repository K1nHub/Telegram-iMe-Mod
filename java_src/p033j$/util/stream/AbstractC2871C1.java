package p033j$.util.stream;
/* renamed from: j$.util.stream.C1 */
/* loaded from: classes2.dex */
abstract class AbstractC2871C1 implements InterfaceC2859A1 {

    /* renamed from: a */
    protected final InterfaceC2859A1 f787a;

    /* renamed from: b */
    protected final InterfaceC2859A1 f788b;

    /* renamed from: c */
    private final long f789c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2871C1(InterfaceC2859A1 interfaceC2859A1, InterfaceC2859A1 interfaceC2859A12) {
        this.f787a = interfaceC2859A1;
        this.f788b = interfaceC2859A12;
        this.f789c = interfaceC2859A1.count() + interfaceC2859A12.count();
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: b */
    public InterfaceC2859A1 mo280b(int i) {
        if (i == 0) {
            return this.f787a;
        }
        if (i == 1) {
            return this.f788b;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC3156z1 mo280b(int i) {
        return (InterfaceC3156z1) mo280b(i);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public long count() {
        return this.f789c;
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: p */
    public int mo320p() {
        return 2;
    }
}
