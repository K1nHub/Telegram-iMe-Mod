package p033j$.util.stream;
/* renamed from: j$.util.stream.v2 */
/* loaded from: classes2.dex */
class C3125v2 extends AbstractC3131w2 {

    /* renamed from: c */
    public final /* synthetic */ int f1205c;

    /* renamed from: d */
    private final Object f1206d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3125v2(InterfaceC3148z1 interfaceC3148z1, Object obj, int i) {
        super(interfaceC3148z1, i);
        this.f1205c = 0;
        this.f1206d = obj;
    }

    @Override // p033j$.util.stream.AbstractC3131w2
    /* renamed from: a */
    void mo379a() {
        switch (this.f1205c) {
            case 0:
                ((InterfaceC3148z1) this.f1212a).mo341d(this.f1206d, this.f1213b);
                return;
            default:
                this.f1212a.mo385i((Object[]) this.f1206d, this.f1213b);
                return;
        }
    }

    @Override // p033j$.util.stream.AbstractC3131w2
    /* renamed from: b */
    AbstractC3131w2 mo378b(int i, int i2) {
        switch (this.f1205c) {
            case 0:
                return new C3125v2(this, ((InterfaceC3148z1) this.f1212a).mo343b(i), i2);
            default:
                return new C3125v2(this, this.f1212a.mo343b(i), i2);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C3125v2(InterfaceC3148z1 interfaceC3148z1, Object obj, int i, AbstractC2857B1 abstractC2857B1) {
        this(interfaceC3148z1, obj, i);
        this.f1205c = 0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3125v2(InterfaceC2851A1 interfaceC2851A1, Object[] objArr, int i, AbstractC2857B1 abstractC2857B1) {
        super(interfaceC2851A1, i);
        this.f1205c = 1;
        this.f1205c = 1;
        this.f1206d = objArr;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3125v2(C3125v2 c3125v2, InterfaceC3148z1 interfaceC3148z1, int i) {
        super(c3125v2, interfaceC3148z1, i);
        this.f1205c = 0;
        this.f1206d = c3125v2.f1206d;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3125v2(C3125v2 c3125v2, InterfaceC2851A1 interfaceC2851A1, int i) {
        super(c3125v2, interfaceC2851A1, i);
        this.f1205c = 1;
        this.f1206d = (Object[]) c3125v2.f1206d;
    }
}
