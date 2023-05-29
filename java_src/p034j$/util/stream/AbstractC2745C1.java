package p034j$.util.stream;
/* renamed from: j$.util.stream.C1 */
/* loaded from: classes2.dex */
abstract class AbstractC2745C1 implements InterfaceC2733A1 {

    /* renamed from: a */
    protected final InterfaceC2733A1 f705a;

    /* renamed from: b */
    protected final InterfaceC2733A1 f706b;

    /* renamed from: c */
    private final long f707c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2745C1(InterfaceC2733A1 interfaceC2733A1, InterfaceC2733A1 interfaceC2733A12) {
        this.f705a = interfaceC2733A1;
        this.f706b = interfaceC2733A12;
        this.f707c = interfaceC2733A1.count() + interfaceC2733A12.count();
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    /* renamed from: b */
    public InterfaceC2733A1 mo280b(int i) {
        if (i == 0) {
            return this.f705a;
        }
        if (i == 1) {
            return this.f706b;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC3030z1 mo280b(int i) {
        return (InterfaceC3030z1) mo280b(i);
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    public long count() {
        return this.f707c;
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    /* renamed from: p */
    public int mo320p() {
        return 2;
    }
}
