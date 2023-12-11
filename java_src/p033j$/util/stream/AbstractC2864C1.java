package p033j$.util.stream;
/* renamed from: j$.util.stream.C1 */
/* loaded from: classes2.dex */
abstract class AbstractC2864C1 implements InterfaceC2852A1 {

    /* renamed from: a */
    protected final InterfaceC2852A1 f840a;

    /* renamed from: b */
    protected final InterfaceC2852A1 f841b;

    /* renamed from: c */
    private final long f842c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2864C1(InterfaceC2852A1 interfaceC2852A1, InterfaceC2852A1 interfaceC2852A12) {
        this.f840a = interfaceC2852A1;
        this.f841b = interfaceC2852A12;
        this.f842c = interfaceC2852A1.count() + interfaceC2852A12.count();
    }

    @Override // p033j$.util.stream.InterfaceC2852A1
    /* renamed from: b */
    public InterfaceC2852A1 mo344b(int i) {
        if (i == 0) {
            return this.f840a;
        }
        if (i == 1) {
            return this.f841b;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC2852A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC3149z1 mo344b(int i) {
        return (InterfaceC3149z1) mo344b(i);
    }

    @Override // p033j$.util.stream.InterfaceC2852A1
    public long count() {
        return this.f842c;
    }

    @Override // p033j$.util.stream.InterfaceC2852A1
    /* renamed from: n */
    public int mo384n() {
        return 2;
    }
}
