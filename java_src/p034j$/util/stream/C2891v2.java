package p034j$.util.stream;
/* renamed from: j$.util.stream.v2 */
/* loaded from: classes2.dex */
class C2891v2 extends AbstractC2897w2 {

    /* renamed from: c */
    public final /* synthetic */ int f1066c;

    /* renamed from: d */
    private final Object f1067d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2891v2(InterfaceC2914z1 interfaceC2914z1, Object obj, int i) {
        super(interfaceC2914z1, i);
        this.f1066c = 0;
        this.f1067d = obj;
    }

    @Override // p034j$.util.stream.AbstractC2897w2
    /* renamed from: a */
    void mo331a() {
        switch (this.f1066c) {
            case 0:
                ((InterfaceC2914z1) this.f1073a).mo293d(this.f1067d, this.f1074b);
                return;
            default:
                this.f1073a.mo337i((Object[]) this.f1067d, this.f1074b);
                return;
        }
    }

    @Override // p034j$.util.stream.AbstractC2897w2
    /* renamed from: b */
    AbstractC2897w2 mo330b(int i, int i2) {
        switch (this.f1066c) {
            case 0:
                return new C2891v2(this, ((InterfaceC2914z1) this.f1073a).mo295b(i), i2);
            default:
                return new C2891v2(this, this.f1073a.mo295b(i), i2);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2891v2(InterfaceC2914z1 interfaceC2914z1, Object obj, int i, AbstractC2623B1 abstractC2623B1) {
        this(interfaceC2914z1, obj, i);
        this.f1066c = 0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2891v2(InterfaceC2617A1 interfaceC2617A1, Object[] objArr, int i, AbstractC2623B1 abstractC2623B1) {
        super(interfaceC2617A1, i);
        this.f1066c = 1;
        this.f1066c = 1;
        this.f1067d = objArr;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2891v2(C2891v2 c2891v2, InterfaceC2914z1 interfaceC2914z1, int i) {
        super(c2891v2, interfaceC2914z1, i);
        this.f1066c = 0;
        this.f1067d = c2891v2.f1067d;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2891v2(C2891v2 c2891v2, InterfaceC2617A1 interfaceC2617A1, int i) {
        super(c2891v2, interfaceC2617A1, i);
        this.f1066c = 1;
        this.f1067d = (Object[]) c2891v2.f1067d;
    }
}
