package p033j$.util.stream;
/* renamed from: j$.util.stream.v2 */
/* loaded from: classes2.dex */
class C3133v2 extends AbstractC3139w2 {

    /* renamed from: c */
    public final /* synthetic */ int f1152c;

    /* renamed from: d */
    private final Object f1153d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3133v2(InterfaceC3156z1 interfaceC3156z1, Object obj, int i) {
        super(interfaceC3156z1, i);
        this.f1152c = 0;
        this.f1153d = obj;
    }

    @Override // p033j$.util.stream.AbstractC3139w2
    /* renamed from: a */
    void mo316a() {
        switch (this.f1152c) {
            case 0:
                ((InterfaceC3156z1) this.f1159a).mo278d(this.f1153d, this.f1160b);
                return;
            default:
                this.f1159a.mo322i((Object[]) this.f1153d, this.f1160b);
                return;
        }
    }

    @Override // p033j$.util.stream.AbstractC3139w2
    /* renamed from: b */
    AbstractC3139w2 mo315b(int i, int i2) {
        switch (this.f1152c) {
            case 0:
                return new C3133v2(this, ((InterfaceC3156z1) this.f1159a).mo280b(i), i2);
            default:
                return new C3133v2(this, this.f1159a.mo280b(i), i2);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C3133v2(InterfaceC3156z1 interfaceC3156z1, Object obj, int i, AbstractC2865B1 abstractC2865B1) {
        this(interfaceC3156z1, obj, i);
        this.f1152c = 0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3133v2(InterfaceC2859A1 interfaceC2859A1, Object[] objArr, int i, AbstractC2865B1 abstractC2865B1) {
        super(interfaceC2859A1, i);
        this.f1152c = 1;
        this.f1152c = 1;
        this.f1153d = objArr;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3133v2(C3133v2 c3133v2, InterfaceC3156z1 interfaceC3156z1, int i) {
        super(c3133v2, interfaceC3156z1, i);
        this.f1152c = 0;
        this.f1153d = c3133v2.f1153d;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3133v2(C3133v2 c3133v2, InterfaceC2859A1 interfaceC2859A1, int i) {
        super(c3133v2, interfaceC2859A1, i);
        this.f1152c = 1;
        this.f1153d = (Object[]) c3133v2.f1153d;
    }
}
