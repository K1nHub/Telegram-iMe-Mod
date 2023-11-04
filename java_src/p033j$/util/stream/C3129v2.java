package p033j$.util.stream;
/* renamed from: j$.util.stream.v2 */
/* loaded from: classes2.dex */
class C3129v2 extends AbstractC3135w2 {

    /* renamed from: c */
    public final /* synthetic */ int f1205c;

    /* renamed from: d */
    private final Object f1206d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3129v2(InterfaceC3152z1 interfaceC3152z1, Object obj, int i) {
        super(interfaceC3152z1, i);
        this.f1205c = 0;
        this.f1206d = obj;
    }

    @Override // p033j$.util.stream.AbstractC3135w2
    /* renamed from: a */
    void mo380a() {
        switch (this.f1205c) {
            case 0:
                ((InterfaceC3152z1) this.f1212a).mo342d(this.f1206d, this.f1213b);
                return;
            default:
                this.f1212a.mo386i((Object[]) this.f1206d, this.f1213b);
                return;
        }
    }

    @Override // p033j$.util.stream.AbstractC3135w2
    /* renamed from: b */
    AbstractC3135w2 mo379b(int i, int i2) {
        switch (this.f1205c) {
            case 0:
                return new C3129v2(this, ((InterfaceC3152z1) this.f1212a).mo344b(i), i2);
            default:
                return new C3129v2(this, this.f1212a.mo344b(i), i2);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C3129v2(InterfaceC3152z1 interfaceC3152z1, Object obj, int i, AbstractC2861B1 abstractC2861B1) {
        this(interfaceC3152z1, obj, i);
        this.f1205c = 0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3129v2(InterfaceC2855A1 interfaceC2855A1, Object[] objArr, int i, AbstractC2861B1 abstractC2861B1) {
        super(interfaceC2855A1, i);
        this.f1205c = 1;
        this.f1205c = 1;
        this.f1206d = objArr;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3129v2(C3129v2 c3129v2, InterfaceC3152z1 interfaceC3152z1, int i) {
        super(c3129v2, interfaceC3152z1, i);
        this.f1205c = 0;
        this.f1206d = c3129v2.f1206d;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3129v2(C3129v2 c3129v2, InterfaceC2855A1 interfaceC2855A1, int i) {
        super(c3129v2, interfaceC2855A1, i);
        this.f1205c = 1;
        this.f1206d = (Object[]) c3129v2.f1206d;
    }
}
