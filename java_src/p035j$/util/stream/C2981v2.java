package p035j$.util.stream;
/* renamed from: j$.util.stream.v2 */
/* loaded from: classes2.dex */
class C2981v2 extends AbstractC2987w2 {

    /* renamed from: c */
    public final /* synthetic */ int f1072c;

    /* renamed from: d */
    private final Object f1073d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2981v2(InterfaceC3004z1 interfaceC3004z1, Object obj, int i) {
        super(interfaceC3004z1, i);
        this.f1072c = 0;
        this.f1073d = obj;
    }

    @Override // p035j$.util.stream.AbstractC2987w2
    /* renamed from: a */
    void mo325a() {
        switch (this.f1072c) {
            case 0:
                ((InterfaceC3004z1) this.f1079a).mo287d(this.f1073d, this.f1080b);
                return;
            default:
                this.f1079a.mo331i((Object[]) this.f1073d, this.f1080b);
                return;
        }
    }

    @Override // p035j$.util.stream.AbstractC2987w2
    /* renamed from: b */
    AbstractC2987w2 mo324b(int i, int i2) {
        switch (this.f1072c) {
            case 0:
                return new C2981v2(this, ((InterfaceC3004z1) this.f1079a).mo289b(i), i2);
            default:
                return new C2981v2(this, this.f1079a.mo289b(i), i2);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2981v2(InterfaceC3004z1 interfaceC3004z1, Object obj, int i, AbstractC2713B1 abstractC2713B1) {
        this(interfaceC3004z1, obj, i);
        this.f1072c = 0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2981v2(InterfaceC2707A1 interfaceC2707A1, Object[] objArr, int i, AbstractC2713B1 abstractC2713B1) {
        super(interfaceC2707A1, i);
        this.f1072c = 1;
        this.f1072c = 1;
        this.f1073d = objArr;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2981v2(C2981v2 c2981v2, InterfaceC3004z1 interfaceC3004z1, int i) {
        super(c2981v2, interfaceC3004z1, i);
        this.f1072c = 0;
        this.f1073d = c2981v2.f1073d;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2981v2(C2981v2 c2981v2, InterfaceC2707A1 interfaceC2707A1, int i) {
        super(c2981v2, interfaceC2707A1, i);
        this.f1072c = 1;
        this.f1073d = (Object[]) c2981v2.f1073d;
    }
}
