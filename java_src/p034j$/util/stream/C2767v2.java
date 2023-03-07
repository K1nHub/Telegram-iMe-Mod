package p034j$.util.stream;
/* renamed from: j$.util.stream.v2 */
/* loaded from: classes2.dex */
class C2767v2 extends AbstractC2773w2 {

    /* renamed from: c */
    public final /* synthetic */ int f1061c;

    /* renamed from: d */
    private final Object f1062d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2767v2(InterfaceC2790z1 interfaceC2790z1, Object obj, int i) {
        super(interfaceC2790z1, i);
        this.f1061c = 0;
        this.f1062d = obj;
    }

    @Override // p034j$.util.stream.AbstractC2773w2
    /* renamed from: a */
    void mo331a() {
        switch (this.f1061c) {
            case 0:
                ((InterfaceC2790z1) this.f1068a).mo293d(this.f1062d, this.f1069b);
                return;
            default:
                this.f1068a.mo337i((Object[]) this.f1062d, this.f1069b);
                return;
        }
    }

    @Override // p034j$.util.stream.AbstractC2773w2
    /* renamed from: b */
    AbstractC2773w2 mo330b(int i, int i2) {
        switch (this.f1061c) {
            case 0:
                return new C2767v2(this, ((InterfaceC2790z1) this.f1068a).mo295b(i), i2);
            default:
                return new C2767v2(this, this.f1068a.mo295b(i), i2);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2767v2(InterfaceC2790z1 interfaceC2790z1, Object obj, int i, AbstractC2499B1 abstractC2499B1) {
        this(interfaceC2790z1, obj, i);
        this.f1061c = 0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2767v2(InterfaceC2493A1 interfaceC2493A1, Object[] objArr, int i, AbstractC2499B1 abstractC2499B1) {
        super(interfaceC2493A1, i);
        this.f1061c = 1;
        this.f1061c = 1;
        this.f1062d = objArr;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2767v2(C2767v2 c2767v2, InterfaceC2790z1 interfaceC2790z1, int i) {
        super(c2767v2, interfaceC2790z1, i);
        this.f1061c = 0;
        this.f1062d = c2767v2.f1062d;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2767v2(C2767v2 c2767v2, InterfaceC2493A1 interfaceC2493A1, int i) {
        super(c2767v2, interfaceC2493A1, i);
        this.f1061c = 1;
        this.f1062d = (Object[]) c2767v2.f1062d;
    }
}
