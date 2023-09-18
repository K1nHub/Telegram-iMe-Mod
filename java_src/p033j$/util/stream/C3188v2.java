package p033j$.util.stream;
/* renamed from: j$.util.stream.v2 */
/* loaded from: classes2.dex */
class C3188v2 extends AbstractC3194w2 {

    /* renamed from: c */
    public final /* synthetic */ int f1156c;

    /* renamed from: d */
    private final Object f1157d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3188v2(InterfaceC3211z1 interfaceC3211z1, Object obj, int i) {
        super(interfaceC3211z1, i);
        this.f1156c = 0;
        this.f1157d = obj;
    }

    @Override // p033j$.util.stream.AbstractC3194w2
    /* renamed from: a */
    void mo334a() {
        switch (this.f1156c) {
            case 0:
                ((InterfaceC3211z1) this.f1163a).mo296d(this.f1157d, this.f1164b);
                return;
            default:
                this.f1163a.mo340i((Object[]) this.f1157d, this.f1164b);
                return;
        }
    }

    @Override // p033j$.util.stream.AbstractC3194w2
    /* renamed from: b */
    AbstractC3194w2 mo333b(int i, int i2) {
        switch (this.f1156c) {
            case 0:
                return new C3188v2(this, ((InterfaceC3211z1) this.f1163a).mo298b(i), i2);
            default:
                return new C3188v2(this, this.f1163a.mo298b(i), i2);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C3188v2(InterfaceC3211z1 interfaceC3211z1, Object obj, int i, AbstractC2920B1 abstractC2920B1) {
        this(interfaceC3211z1, obj, i);
        this.f1156c = 0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3188v2(InterfaceC2914A1 interfaceC2914A1, Object[] objArr, int i, AbstractC2920B1 abstractC2920B1) {
        super(interfaceC2914A1, i);
        this.f1156c = 1;
        this.f1156c = 1;
        this.f1157d = objArr;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3188v2(C3188v2 c3188v2, InterfaceC3211z1 interfaceC3211z1, int i) {
        super(c3188v2, interfaceC3211z1, i);
        this.f1156c = 0;
        this.f1157d = c3188v2.f1157d;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3188v2(C3188v2 c3188v2, InterfaceC2914A1 interfaceC2914A1, int i) {
        super(c3188v2, interfaceC2914A1, i);
        this.f1156c = 1;
        this.f1157d = (Object[]) c3188v2.f1157d;
    }
}
