package p034j$.util.stream;

import p034j$.util.function.Predicate;
/* renamed from: j$.util.stream.f1 */
/* loaded from: classes2.dex */
class C2808f1 extends AbstractC2832j1 {

    /* renamed from: c */
    final /* synthetic */ EnumC2838k1 f940c;

    /* renamed from: d */
    final /* synthetic */ Predicate f941d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2808f1(EnumC2838k1 enumC2838k1, Predicate predicate) {
        super(enumC2838k1);
        this.f940c = enumC2838k1;
        this.f941d = predicate;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        boolean z;
        boolean z2;
        if (this.f970a) {
            return;
        }
        boolean test = this.f941d.test(obj);
        z = this.f940c.f976a;
        if (test == z) {
            this.f970a = true;
            z2 = this.f940c.f977b;
            this.f971b = z2;
        }
    }
}
