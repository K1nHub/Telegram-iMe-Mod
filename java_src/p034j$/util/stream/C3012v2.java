package p034j$.util.stream;
/* renamed from: j$.util.stream.v2 */
/* loaded from: classes2.dex */
class C3012v2 extends AbstractC3018w2 {

    /* renamed from: c */
    public final /* synthetic */ int f1070c;

    /* renamed from: d */
    private final Object f1071d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3012v2(InterfaceC3035z1 interfaceC3035z1, Object obj, int i) {
        super(interfaceC3035z1, i);
        this.f1070c = 0;
        this.f1071d = obj;
    }

    @Override // p034j$.util.stream.AbstractC3018w2
    /* renamed from: a */
    void mo316a() {
        switch (this.f1070c) {
            case 0:
                ((InterfaceC3035z1) this.f1077a).mo278d(this.f1071d, this.f1078b);
                return;
            default:
                this.f1077a.mo322i((Object[]) this.f1071d, this.f1078b);
                return;
        }
    }

    @Override // p034j$.util.stream.AbstractC3018w2
    /* renamed from: b */
    AbstractC3018w2 mo315b(int i, int i2) {
        switch (this.f1070c) {
            case 0:
                return new C3012v2(this, ((InterfaceC3035z1) this.f1077a).mo280b(i), i2);
            default:
                return new C3012v2(this, this.f1077a.mo280b(i), i2);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C3012v2(InterfaceC3035z1 interfaceC3035z1, Object obj, int i, AbstractC2744B1 abstractC2744B1) {
        this(interfaceC3035z1, obj, i);
        this.f1070c = 0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3012v2(InterfaceC2738A1 interfaceC2738A1, Object[] objArr, int i, AbstractC2744B1 abstractC2744B1) {
        super(interfaceC2738A1, i);
        this.f1070c = 1;
        this.f1070c = 1;
        this.f1071d = objArr;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3012v2(C3012v2 c3012v2, InterfaceC3035z1 interfaceC3035z1, int i) {
        super(c3012v2, interfaceC3035z1, i);
        this.f1070c = 0;
        this.f1071d = c3012v2.f1071d;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3012v2(C3012v2 c3012v2, InterfaceC2738A1 interfaceC2738A1, int i) {
        super(c3012v2, interfaceC2738A1, i);
        this.f1070c = 1;
        this.f1071d = (Object[]) c3012v2.f1071d;
    }
}
