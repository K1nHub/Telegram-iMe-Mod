package p033j$.util.stream;
/* renamed from: j$.util.stream.v2 */
/* loaded from: classes2.dex */
class C3124v2 extends AbstractC3130w2 {

    /* renamed from: c */
    public final /* synthetic */ int f1205c;

    /* renamed from: d */
    private final Object f1206d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3124v2(InterfaceC3147z1 interfaceC3147z1, Object obj, int i) {
        super(interfaceC3147z1, i);
        this.f1205c = 0;
        this.f1206d = obj;
    }

    @Override // p033j$.util.stream.AbstractC3130w2
    /* renamed from: a */
    void mo383a() {
        switch (this.f1205c) {
            case 0:
                ((InterfaceC3147z1) this.f1212a).mo345d(this.f1206d, this.f1213b);
                return;
            default:
                this.f1212a.mo389i((Object[]) this.f1206d, this.f1213b);
                return;
        }
    }

    @Override // p033j$.util.stream.AbstractC3130w2
    /* renamed from: b */
    AbstractC3130w2 mo382b(int i, int i2) {
        switch (this.f1205c) {
            case 0:
                return new C3124v2(this, ((InterfaceC3147z1) this.f1212a).mo347b(i), i2);
            default:
                return new C3124v2(this, this.f1212a.mo347b(i), i2);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C3124v2(InterfaceC3147z1 interfaceC3147z1, Object obj, int i, AbstractC2856B1 abstractC2856B1) {
        this(interfaceC3147z1, obj, i);
        this.f1205c = 0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3124v2(InterfaceC2850A1 interfaceC2850A1, Object[] objArr, int i, AbstractC2856B1 abstractC2856B1) {
        super(interfaceC2850A1, i);
        this.f1205c = 1;
        this.f1205c = 1;
        this.f1206d = objArr;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3124v2(C3124v2 c3124v2, InterfaceC3147z1 interfaceC3147z1, int i) {
        super(c3124v2, interfaceC3147z1, i);
        this.f1205c = 0;
        this.f1206d = c3124v2.f1206d;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3124v2(C3124v2 c3124v2, InterfaceC2850A1 interfaceC2850A1, int i) {
        super(c3124v2, interfaceC2850A1, i);
        this.f1205c = 1;
        this.f1206d = (Object[]) c3124v2.f1206d;
    }
}
