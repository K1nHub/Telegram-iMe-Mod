package p033j$.util.stream;
/* renamed from: j$.util.stream.v2 */
/* loaded from: classes2.dex */
class C3272v2 extends AbstractC3278w2 {

    /* renamed from: c */
    public final /* synthetic */ int f1165c;

    /* renamed from: d */
    private final Object f1166d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3272v2(InterfaceC3295z1 interfaceC3295z1, Object obj, int i) {
        super(interfaceC3295z1, i);
        this.f1165c = 0;
        this.f1166d = obj;
    }

    @Override // p033j$.util.stream.AbstractC3278w2
    /* renamed from: a */
    void mo334a() {
        switch (this.f1165c) {
            case 0:
                ((InterfaceC3295z1) this.f1172a).mo296d(this.f1166d, this.f1173b);
                return;
            default:
                this.f1172a.mo340i((Object[]) this.f1166d, this.f1173b);
                return;
        }
    }

    @Override // p033j$.util.stream.AbstractC3278w2
    /* renamed from: b */
    AbstractC3278w2 mo333b(int i, int i2) {
        switch (this.f1165c) {
            case 0:
                return new C3272v2(this, ((InterfaceC3295z1) this.f1172a).mo298b(i), i2);
            default:
                return new C3272v2(this, this.f1172a.mo298b(i), i2);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C3272v2(InterfaceC3295z1 interfaceC3295z1, Object obj, int i, AbstractC3004B1 abstractC3004B1) {
        this(interfaceC3295z1, obj, i);
        this.f1165c = 0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3272v2(InterfaceC2998A1 interfaceC2998A1, Object[] objArr, int i, AbstractC3004B1 abstractC3004B1) {
        super(interfaceC2998A1, i);
        this.f1165c = 1;
        this.f1165c = 1;
        this.f1166d = objArr;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3272v2(C3272v2 c3272v2, InterfaceC3295z1 interfaceC3295z1, int i) {
        super(c3272v2, interfaceC3295z1, i);
        this.f1165c = 0;
        this.f1166d = c3272v2.f1166d;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3272v2(C3272v2 c3272v2, InterfaceC2998A1 interfaceC2998A1, int i) {
        super(c3272v2, interfaceC2998A1, i);
        this.f1165c = 1;
        this.f1166d = (Object[]) c3272v2.f1166d;
    }
}
