package p033j$.util.stream;
/* renamed from: j$.util.stream.C1 */
/* loaded from: classes2.dex */
abstract class AbstractC2863C1 implements InterfaceC2851A1 {

    /* renamed from: a */
    protected final InterfaceC2851A1 f840a;

    /* renamed from: b */
    protected final InterfaceC2851A1 f841b;

    /* renamed from: c */
    private final long f842c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2863C1(InterfaceC2851A1 interfaceC2851A1, InterfaceC2851A1 interfaceC2851A12) {
        this.f840a = interfaceC2851A1;
        this.f841b = interfaceC2851A12;
        this.f842c = interfaceC2851A1.count() + interfaceC2851A12.count();
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: b */
    public InterfaceC2851A1 mo343b(int i) {
        if (i == 0) {
            return this.f840a;
        }
        if (i == 1) {
            return this.f841b;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC3148z1 mo343b(int i) {
        return (InterfaceC3148z1) mo343b(i);
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    public long count() {
        return this.f842c;
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: n */
    public int mo383n() {
        return 2;
    }
}
