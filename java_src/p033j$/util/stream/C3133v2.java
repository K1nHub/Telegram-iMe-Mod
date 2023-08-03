package p033j$.util.stream;
/* renamed from: j$.util.stream.v2 */
/* loaded from: classes2.dex */
class C3133v2 extends AbstractC3139w2 {

    /* renamed from: c */
    public final /* synthetic */ int f1155c;

    /* renamed from: d */
    private final Object f1156d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3133v2(InterfaceC3156z1 interfaceC3156z1, Object obj, int i) {
        super(interfaceC3156z1, i);
        this.f1155c = 0;
        this.f1156d = obj;
    }

    @Override // p033j$.util.stream.AbstractC3139w2
    /* renamed from: a */
    void mo334a() {
        switch (this.f1155c) {
            case 0:
                ((InterfaceC3156z1) this.f1162a).mo296d(this.f1156d, this.f1163b);
                return;
            default:
                this.f1162a.mo340i((Object[]) this.f1156d, this.f1163b);
                return;
        }
    }

    @Override // p033j$.util.stream.AbstractC3139w2
    /* renamed from: b */
    AbstractC3139w2 mo333b(int i, int i2) {
        switch (this.f1155c) {
            case 0:
                return new C3133v2(this, ((InterfaceC3156z1) this.f1162a).mo298b(i), i2);
            default:
                return new C3133v2(this, this.f1162a.mo298b(i), i2);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C3133v2(InterfaceC3156z1 interfaceC3156z1, Object obj, int i, AbstractC2865B1 abstractC2865B1) {
        this(interfaceC3156z1, obj, i);
        this.f1155c = 0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3133v2(InterfaceC2859A1 interfaceC2859A1, Object[] objArr, int i, AbstractC2865B1 abstractC2865B1) {
        super(interfaceC2859A1, i);
        this.f1155c = 1;
        this.f1155c = 1;
        this.f1156d = objArr;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3133v2(C3133v2 c3133v2, InterfaceC3156z1 interfaceC3156z1, int i) {
        super(c3133v2, interfaceC3156z1, i);
        this.f1155c = 0;
        this.f1156d = c3133v2.f1156d;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3133v2(C3133v2 c3133v2, InterfaceC2859A1 interfaceC2859A1, int i) {
        super(c3133v2, interfaceC2859A1, i);
        this.f1155c = 1;
        this.f1156d = (Object[]) c3133v2.f1156d;
    }
}
