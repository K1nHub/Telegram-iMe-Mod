package p033j$.util.stream;
/* renamed from: j$.util.stream.C1 */
/* loaded from: classes2.dex */
abstract class AbstractC2862C1 implements InterfaceC2850A1 {

    /* renamed from: a */
    protected final InterfaceC2850A1 f840a;

    /* renamed from: b */
    protected final InterfaceC2850A1 f841b;

    /* renamed from: c */
    private final long f842c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2862C1(InterfaceC2850A1 interfaceC2850A1, InterfaceC2850A1 interfaceC2850A12) {
        this.f840a = interfaceC2850A1;
        this.f841b = interfaceC2850A12;
        this.f842c = interfaceC2850A1.count() + interfaceC2850A12.count();
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: b */
    public InterfaceC2850A1 mo347b(int i) {
        if (i == 0) {
            return this.f840a;
        }
        if (i == 1) {
            return this.f841b;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC3147z1 mo347b(int i) {
        return (InterfaceC3147z1) mo347b(i);
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    public long count() {
        return this.f842c;
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: n */
    public int mo387n() {
        return 2;
    }
}
