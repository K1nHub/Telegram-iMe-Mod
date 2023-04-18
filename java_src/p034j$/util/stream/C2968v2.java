package p034j$.util.stream;
/* renamed from: j$.util.stream.v2 */
/* loaded from: classes2.dex */
class C2968v2 extends AbstractC2974w2 {

    /* renamed from: c */
    public final /* synthetic */ int f1067c;

    /* renamed from: d */
    private final Object f1068d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2968v2(InterfaceC2991z1 interfaceC2991z1, Object obj, int i) {
        super(interfaceC2991z1, i);
        this.f1067c = 0;
        this.f1068d = obj;
    }

    @Override // p034j$.util.stream.AbstractC2974w2
    /* renamed from: a */
    void mo311a() {
        switch (this.f1067c) {
            case 0:
                ((InterfaceC2991z1) this.f1074a).mo273d(this.f1068d, this.f1075b);
                return;
            default:
                this.f1074a.mo317i((Object[]) this.f1068d, this.f1075b);
                return;
        }
    }

    @Override // p034j$.util.stream.AbstractC2974w2
    /* renamed from: b */
    AbstractC2974w2 mo310b(int i, int i2) {
        switch (this.f1067c) {
            case 0:
                return new C2968v2(this, ((InterfaceC2991z1) this.f1074a).mo275b(i), i2);
            default:
                return new C2968v2(this, this.f1074a.mo275b(i), i2);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2968v2(InterfaceC2991z1 interfaceC2991z1, Object obj, int i, AbstractC2700B1 abstractC2700B1) {
        this(interfaceC2991z1, obj, i);
        this.f1067c = 0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2968v2(InterfaceC2694A1 interfaceC2694A1, Object[] objArr, int i, AbstractC2700B1 abstractC2700B1) {
        super(interfaceC2694A1, i);
        this.f1067c = 1;
        this.f1067c = 1;
        this.f1068d = objArr;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2968v2(C2968v2 c2968v2, InterfaceC2991z1 interfaceC2991z1, int i) {
        super(c2968v2, interfaceC2991z1, i);
        this.f1067c = 0;
        this.f1068d = c2968v2.f1068d;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2968v2(C2968v2 c2968v2, InterfaceC2694A1 interfaceC2694A1, int i) {
        super(c2968v2, interfaceC2694A1, i);
        this.f1067c = 1;
        this.f1068d = (Object[]) c2968v2.f1068d;
    }
}
