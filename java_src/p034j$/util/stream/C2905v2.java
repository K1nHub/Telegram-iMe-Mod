package p034j$.util.stream;
/* renamed from: j$.util.stream.v2 */
/* loaded from: classes2.dex */
class C2905v2 extends AbstractC2911w2 {

    /* renamed from: c */
    public final /* synthetic */ int f1067c;

    /* renamed from: d */
    private final Object f1068d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2905v2(InterfaceC2928z1 interfaceC2928z1, Object obj, int i) {
        super(interfaceC2928z1, i);
        this.f1067c = 0;
        this.f1068d = obj;
    }

    @Override // p034j$.util.stream.AbstractC2911w2
    /* renamed from: a */
    void mo330a() {
        switch (this.f1067c) {
            case 0:
                ((InterfaceC2928z1) this.f1074a).mo292d(this.f1068d, this.f1075b);
                return;
            default:
                this.f1074a.mo336i((Object[]) this.f1068d, this.f1075b);
                return;
        }
    }

    @Override // p034j$.util.stream.AbstractC2911w2
    /* renamed from: b */
    AbstractC2911w2 mo329b(int i, int i2) {
        switch (this.f1067c) {
            case 0:
                return new C2905v2(this, ((InterfaceC2928z1) this.f1074a).mo294b(i), i2);
            default:
                return new C2905v2(this, this.f1074a.mo294b(i), i2);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2905v2(InterfaceC2928z1 interfaceC2928z1, Object obj, int i, AbstractC2637B1 abstractC2637B1) {
        this(interfaceC2928z1, obj, i);
        this.f1067c = 0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2905v2(InterfaceC2631A1 interfaceC2631A1, Object[] objArr, int i, AbstractC2637B1 abstractC2637B1) {
        super(interfaceC2631A1, i);
        this.f1067c = 1;
        this.f1067c = 1;
        this.f1068d = objArr;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2905v2(C2905v2 c2905v2, InterfaceC2928z1 interfaceC2928z1, int i) {
        super(c2905v2, interfaceC2928z1, i);
        this.f1067c = 0;
        this.f1068d = c2905v2.f1068d;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2905v2(C2905v2 c2905v2, InterfaceC2631A1 interfaceC2631A1, int i) {
        super(c2905v2, interfaceC2631A1, i);
        this.f1067c = 1;
        this.f1068d = (Object[]) c2905v2.f1068d;
    }
}
